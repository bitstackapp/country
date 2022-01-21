import 'dart:convert';

import 'package:country/country.dart';

extension ListStringExtension on List<String> {
  String toClassString() {
    return '[${map((e) => '\'${e.replaceAll('\'', '\\\'')}\'').join(', ')}]';
  }
}

extension ListIntExtension on List<int> {
  String toClassString() {
    return '[${join(', ')}]';
  }
}

extension CountryClassStringExtension on Country {
  String toClassString() {
    return '''Country(
      '${alpha2..replaceAll('\'', '\\\'')}',
      '${alpha3..replaceAll('\'', '\\\'')}',
      ${continent.toClassString()},
      '${countryCode..replaceAll('\'', '\\\'')}',
      '${currencyCode..replaceAll('\'', '\\\'')}',
      ${gec == null ? null : '\'${gec!.replaceAll('\'', '\\\'')}\''},
      ${geo.toClassString()},
      '${internationalPrefix..replaceAll('\'', '\\\'')}',
      ${ioc == null ? null : '\'${ioc!.replaceAll('\'', '\\\'')}\''},
      '${isoLongName.replaceAll('\'', '\\\'')}',
      '${isoShortName.replaceAll('\'', '\\\'')}',
      ${languagesOfficial.toClassString()},
      ${languagesSpoken.toClassString()},
      ${nationalDestinationCodeLengths.toClassString()},
      ${nationalNumberLengths.toClassString()},
      '${nationalPrefix..replaceAll('\'', '\\\'')}',
      '${nationality..replaceAll('\'', '\\\'')}',
      '${number..replaceAll('\'', '\\\'')}',
      $postalCode,
      ${postalCodeFormat == null ? null : 'r\'${postalCodeFormat!.replaceAll('\'', '\\\'')}\''},
      ${region.toClassString()},
      '${startOfWeek..replaceAll('\'', '\\\'')}',
      '${subregion..replaceAll('\'', '\\\'')}',
      '${unLocode..replaceAll('\'', '\\\'')}',
      ${unofficialNames.toClassString()},
      ${worldRegion.toClassString()},
      ${addressFormat == null ? null : '\'\'\'$addressFormat\'\'\''},
      ${vatRates?.toClassString()},
      ${nanpPrefix == null ? null : '\'${nanpPrefix!.replaceAll('\'', '\\\'')}\''},
      $eeaMember,
      $euMember,
      $esmMember,
      ${altCurrency == null ? null : '\'${altCurrency!.replaceAll('\'', '\\\'')}\''},
      ${json.encode(isoShortNameByLanguage)})''';
  }
}

extension CoordinateClassStringExtension on Coordinate {
  String toClassString() {
    return 'Coordinate($latitude, $longitude)';
  }
}

extension GeoDataClassStringExtension on GeoData {
  String toClassString() {
    return '''GeoData(
          ${coordinate.toClassString()},
          ${maxCoordinate.toClassString()},
          ${minCoordinate.toClassString()},
          ${boundary.toClassString()},
          ${longitudeDec == null ? null : '\'${longitudeDec!.replaceAll('\'', '\\\'')}\''})''';
  }
}

extension BoundaryClassStringExtension on Boundary {
  String toClassString() {
    return '''Boundary(${northeast.toClassString()},
              ${southwest.toClassString()})''';
  }
}

extension VatRatesClassStringExtension on VatRates {
  String toClassString() {
    return '''VatRates(
              $standard, $reduced,
              $superReduced, $parking)''';
  }
}

extension ContinentClassStringExtension on Continent {
  String toClassString() {
    switch (wireName) {
      case Continent.africaWireName:
        return 'Continent.africa';

      case Continent.antarcticaWireName:
        return 'Continent.antarctica';

      case Continent.asiaWireName:
        return 'Continent.asia';

      case Continent.australiaWireName:
        return 'Continent.australia';

      case Continent.europeWireName:
        return 'Continent.europe';

      case Continent.northAmericaWireName:
        return 'Continent.northAmerica';

      case Continent.southAmericaWireName:
        return 'Continent.southAmerica';

      default:
        throw ArgumentError('Unsupported wireName: $wireName');
    }
  }
}

extension RegionClassStringExtension on Region {
  String toClassString() {
    switch (wireName) {
      case Region.europeWireName:
        return 'Region.europe';

      case Region.asiaWireName:
        return 'Region.asia';

      case Region.americasWireName:
        return 'Region.americas';

      case Region.africaWireName:
        return 'Region.africa';

      case Region.unknownWireName:
        return 'Region.unknown';

      case Region.oceaniaWireName:
        return 'Region.oceania';

      default:
        throw ArgumentError('Unsupported wireName: $wireName');
    }
  }
}

extension WorldRegionClassStringExtension on WorldRegion {
  String toClassString() {
    switch (wireName) {
      case WorldRegion.amerWireName:
        return 'WorldRegion.amer';

      case WorldRegion.apacWireName:
        return 'WorldRegion.apac';

      case WorldRegion.emeaWireName:
        return 'WorldRegion.emea';

      default:
        throw ArgumentError('Unsupported wireName: $wireName');
    }
  }
}