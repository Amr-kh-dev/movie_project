import 'package:movie_project/Details/MovieDetail/data/Models/movie_detail/belongs_to_collection.dart';
import 'package:movie_project/Details/MovieDetail/data/Models/movie_detail/genre.dart';
import 'package:movie_project/Details/MovieDetail/data/Models/movie_detail/production_company.dart';
import 'package:movie_project/Details/MovieDetail/data/Models/movie_detail/production_country.dart';
import 'package:movie_project/Details/MovieDetail/data/Models/movie_detail/spoken_language.dart';

class MovieDetail {
  final bool? adult;
  final String? backdropPath;
  final BelongsToCollection? belongsToCollection;
  final int? budget;
  final List<Genre>? genres;
  final String? homepage;
  final int? id;
  final String? imdbId;
  final List<dynamic>? originCountry;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final List<ProductionCompany>? productionCompanies;
  final List<ProductionCountry>? productionCountries;
  final String? releaseDate;
  final int? revenue;
  final int? runtime;
  final List<SpokenLanguage>? spokenLanguages;
  final String? status;
  final String? tagline;
  final String? title;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;

  const MovieDetail({
    this.adult,
    this.backdropPath,
    this.belongsToCollection,
    this.budget,
    this.genres,
    this.homepage,
    this.id,
    this.imdbId,
    this.originCountry,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.productionCompanies,
    this.productionCountries,
    this.releaseDate,
    this.revenue,
    this.runtime,
    this.spokenLanguages,
    this.status,
    this.tagline,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  factory MovieDetail.fromJson(Map<String, dynamic> json) => MovieDetail(
        adult: json['adult'] as bool?,
        backdropPath: json['backdrop_path'] as String?,
        belongsToCollection: json['belongs_to_collection'] == null
            ? null
            : BelongsToCollection.fromJson(
                json['belongs_to_collection'] as Map<String, dynamic>),
        genres: (json['genres'] as List<dynamic>?)
            ?.map((e) => Genre.fromJson(e as Map<String, dynamic>))
            .toList(),
        budget: json['budget'] as int?,
        homepage: json['homepage'] as String?,
        id: json['id'] as int?,
        imdbId: json['imdb_id'] as String?,
        originCountry: json['origin_country'] as List<dynamic>?,
        originalLanguage: json['original_language'] as String?,
        originalTitle: json['original_title'] as String?,
        overview: json['overview'] as String?,
        popularity: (json['popularity'] as num?)?.toDouble(),
        posterPath: json['poster_path'] as String?,
        productionCompanies: (json['production_companies'] as List<dynamic>?)
            ?.map((e) => ProductionCompany.fromJson(e as Map<String, dynamic>))
            .toList(),
        productionCountries: (json['production_countries'] as List<dynamic>?)
            ?.map((e) => ProductionCountry.fromJson(e as Map<String, dynamic>))
            .toList(),
        releaseDate: json['release_date'] as String?,
        revenue: json['revenue'] as int?,
        runtime: json['runtime'] as int?,
        spokenLanguages: (json['spoken_languages'] as List<dynamic>?)
            ?.map((e) => SpokenLanguage.fromJson(e as Map<String, dynamic>))
            .toList(),
        status: json['status'] as String?,
        tagline: json['tagline'] as String?,
        title: json['title'] as String?,
        video: json['video'] as bool?,
        voteAverage: (json['vote_average'] as num?)?.toDouble(),
        voteCount: json['vote_count'] as int?,
      );
}
