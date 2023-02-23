// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:netclipxsample/applications/downloads/downloads_bloc.dart'
    as _i15;
import 'package:netclipxsample/applications/home/home_bloc.dart' as _i16;
import 'package:netclipxsample/applications/hotandnew/hot_and_new_bloc.dart'
    as _i17;
import 'package:netclipxsample/applications/search/search_result/search_result_bloc.dart'
    as _i13;
import 'package:netclipxsample/applications/search/topsearch/topsearch_bloc.dart'
    as _i14;
import 'package:netclipxsample/domain/downloads/facades/i_image_phasad_repo.dart'
    as _i7;
import 'package:netclipxsample/domain/home/facade/i_home_facade.dart' as _i3;
import 'package:netclipxsample/domain/hot_and_new/facade/i_hot_and_new_facade.dart'
    as _i5;
import 'package:netclipxsample/domain/search/facades/i_search_results_facade.dart'
    as _i9;
import 'package:netclipxsample/domain/search/facades/i_top_search_facade.dart'
    as _i11;
import 'package:netclipxsample/infrastructure/downloads/downloads_repository.dart'
    as _i8;
import 'package:netclipxsample/infrastructure/home/home_items_repository.dart'
    as _i4;
import 'package:netclipxsample/infrastructure/hot_and_new/hot_and_new_repository.dart'
    as _i6;
import 'package:netclipxsample/infrastructure/search/search_results_repository.dart'
    as _i10;
import 'package:netclipxsample/infrastructure/search/top_search_repository.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IHomeFacade>(() => _i4.HomeItemsRepository());
    gh.lazySingleton<_i5.IHotAndNewFacade>(() => _i6.HotAndNewRepository());
    gh.lazySingleton<_i7.IImagePhasadRepo>(() => _i8.DownloadsRepository());
    gh.lazySingleton<_i9.ISearchResultsFacade>(
        () => _i10.SearchResultsRepository());
    gh.lazySingleton<_i11.ITopSearchFacade>(() => _i12.SearhRepository());
    gh.factory<_i13.SearchResultBloc>(
        () => _i13.SearchResultBloc(gh<_i9.ISearchResultsFacade>()));
    gh.factory<_i14.TopsearchBloc>(
        () => _i14.TopsearchBloc(gh<_i11.ITopSearchFacade>()));
    gh.factory<_i15.DownloadsBloc>(
        () => _i15.DownloadsBloc(gh<_i7.IImagePhasadRepo>()));
    gh.factory<_i16.HomeBloc>(() => _i16.HomeBloc(gh<_i3.IHomeFacade>()));
    gh.factory<_i17.HotAndNewBloc>(
        () => _i17.HotAndNewBloc(gh<_i5.IHotAndNewFacade>()));
    return this;
  }
}
