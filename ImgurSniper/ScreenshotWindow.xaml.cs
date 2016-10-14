﻿using System;
using System.IO;
using System.Windows;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace ImgurSniper {
    /// <summary>
    /// Interaction logic for ScreenshotWindow.xaml
    /// </summary>
    public partial class ScreenshotWindow : Window {
        public byte[] CroppedImage;
        public Point from, to;
        private bool _down = false; //Mouse Down

        public ScreenshotWindow(ImageSource source) {
            InitializeComponent();

            this.Left = 0;
            this.Top = 0;
            this.Height = source.Height;
            this.Width = source.Width;
            this.img.Source = source;

            this.Height = 250;
        }

        private void img_MouseDown(object sender, System.Windows.Input.MouseButtonEventArgs e) {
            from = e.GetPosition(this);
            CropRect.Visibility = Visibility.Visible;
            CropRect.Margin = new Thickness(e.GetPosition(this).X, e.GetPosition(this).Y, e.GetPosition(this).X, e.GetPosition(this).Y);
            _down = true;
        }

        private void img_MouseUp(object sender, System.Windows.Input.MouseButtonEventArgs e) {
            to = e.GetPosition(this);

            if(to.X == from.X && to.Y == to.Y) {
                System.Windows.Forms.MessageBox.Show("The Image Width and Height cannot be 0!", "Image too small");
            } else {
                int width = (int)this.Width, height = (int)this.Height;
                //while(CroppedImage.Length > 2000000) {
                MakeImage(width, height);

                //width -= 10;
                //height -= 10;
                //}

                DialogResult = true;
            }
        }

        private void MakeImage(int width, int height) {
            try {
                BitmapImage src = img.Source as BitmapImage;
                src.CacheOption = BitmapCacheOption.OnLoad;


                CroppedBitmap croppedImage = new CroppedBitmap(src, new Int32Rect((int)from.X, (int)from.Y, (int)(to.X - from.X), (int)(to.Y - from.Y)));

                JpegBitmapEncoder encoder = new JpegBitmapEncoder();
                encoder.QualityLevel = 100;
                using(MemoryStream stream = new MemoryStream()) {
                    encoder.Frames.Add(BitmapFrame.Create(croppedImage));
                    encoder.Save(stream);
                    CroppedImage = stream.ToArray();
                    stream.Close();
                }
            } catch(Exception) { }
        }

        private void Grid_KeyDown(object sender, System.Windows.Input.KeyEventArgs e) {
            if(e.Key == System.Windows.Input.Key.Escape) {
                this.DialogResult = false;
            }
        }

        private void img_MouseMove(object sender, System.Windows.Input.MouseEventArgs e) {
            double x = e.GetPosition(this).X;
            double y = e.GetPosition(this).Y;

            double right = this.Width - x, bottom = this.Height - y;


            if(_down) {
                double _left, _top, _right, _bottom;
                _left = CropRect.Margin.Left;
                _top = CropRect.Margin.Top;
                _right = right;
                _bottom = bottom;



                CropRect.Margin = new Thickness(_left, _top, _right, _bottom);

                //if(CropRect.ActualWidth < 5) {
                //    CropRect.Margin = new Thickness(CropRect.Margin.Right, CropRect.Margin.Top, CropRect.Margin.Left, CropRect.Margin.Bottom);
                //}
                //if(CropRect.ActualHeight < 5) {
                //    CropRect.Margin = new Thickness(CropRect.Margin.Left, CropRect.Margin.Bottom, CropRect.Margin.Right, CropRect.Margin.Top);
                //}
            }

            right -= 35;

            MagnifyingGlass.Margin = new Thickness(x - 35, y - 120, right, bottom);
            MagnifyedImage.Source = img.Source;

            var rect = new Rect(x, y, 70, 70);

            var group = new DrawingGroup();
            RenderOptions.SetBitmapScalingMode(group, BitmapScalingMode.HighQuality);
            group.Children.Add(new ImageDrawing(img.Source, rect));

            var drawingVisual = new DrawingVisual();
            using(var drawingContext = drawingVisual.RenderOpen())
                drawingContext.DrawDrawing(group);

            var resizedImage = new RenderTargetBitmap(
                70, 70,         // Resized dimensions
                96, 96,                // Default DPI values
                PixelFormats.Default); // Default pixel format
            resizedImage.Render(drawingVisual);

            MagnifyedImage.Source = BitmapFrame.Create(resizedImage);







            //int count = 0;

            //byte[] byteImage = Screenshot.ImageToByte(img.Source);
            //MemoryStream ms = new MemoryStream(byteImage);

            //BitmapImage src = new BitmapImage();
            //src.BeginInit();
            //src.UriSource = new Uri(img);
            //src.CacheOption = BitmapCacheOption.OnLoad;
            //src.EndInit();

            //for(int i = 0; i < 3; i++)
            //    for(int j = 0; j < 3; j++)
            //        objImg[count++] = new CroppedBitmap(src, new Int32Rect(j * 120, i * 120, 120, 120));
            ////MagnifyedImage.Margin = new Thickness(1,50,10,50);

            this.coords.Content = "x:" + x + " | " + "y:" + y;
        }
    }
}