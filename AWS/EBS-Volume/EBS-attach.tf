resource "aws_volume_attachment" "EBSEC2Att" {
  device_name = "/dev/sdh"
  volume_id = aws_ebs_volume.volume1.id
  instance_id = aws_instance.EBSTest.id
}