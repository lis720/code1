import org.openkinect.processing.*;
Kinect2 kinect2;

void setup() {
  kinect2 = new Kinect2(this);
  kinect2.initDevice();
}