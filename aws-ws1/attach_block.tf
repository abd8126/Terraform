resource "aws_volume_attachment" "vol_att" {
  device_name = "/dev/sdh"
  volume_id = aws_ebs_volume.et1.id
  instance_id = aws_instance.web.id
}