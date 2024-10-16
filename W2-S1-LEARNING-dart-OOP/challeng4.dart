class Distance {
  final double? _meters;
  Distance.cms(double cms) : _meters = cms / 100;
  Distance.meters(double meters) : _meters = meters;
  Distance.kms(double kms) : _meters = kms * 1000;

  double get cms => this._meters! * 100;
  double get meters => this._meters!;
  double get kms => this._meters! / 1000;

  Distance operator +(Distance p) {
    return Distance.kms(kms + p.kms);
  }
}

void main() {
  Distance d1 = Distance.kms(3.4);
  Distance d2 = Distance.meters(1000);  
  Distance d3 = Distance.cms(100000);
  print('${(d1 + d2 + d3).kms}km');
}
