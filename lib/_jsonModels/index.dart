// To parse this JSON data, do
//
//     final indexPage = indexPageFromJson(jsonString);

import 'dart:convert';

IndexPage indexPageFromJson(String str) => IndexPage.fromJson(json.decode(str));

String indexPageToJson(IndexPage data) => json.encode(data.toJson());

class IndexPage {
    IndexPage({
        this.title,
        this.uniquename,
        this.adv,
        this.noroll,
        this.nofloorad,
        this.contents,
        this.trackInfo,
    });

    String title;
    String uniquename;
    bool adv;
    bool noroll;
    bool nofloorad;
    List<IndexPageContent> contents;
    TrackInfo trackInfo;

    factory IndexPage.fromJson(Map<String, dynamic> json) => IndexPage(
        title: json["title"],
        uniquename: json["uniquename"],
        adv: json["adv"],
        noroll: json["noroll"],
        nofloorad: json["nofloorad"],
        contents: List<IndexPageContent>.from(json["contents"].map((x) => IndexPageContent.fromJson(x))),
        trackInfo: TrackInfo.fromJson(json["track_info"]),
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "uniquename": uniquename,
        "adv": adv,
        "noroll": noroll,
        "nofloorad": nofloorad,
        "contents": List<dynamic>.from(contents.map((x) => x.toJson())),
        "track_info": trackInfo.toJson(),
    };
}

class IndexPageContent {
    IndexPageContent({
        this.id,
        this.name,
        this.type,
        this.contents,
        this.header,
        this.pathId,
        this.section,
        this.info,
    });

    String id;
    String name;
    String type;
    List<ContentContent> contents;
    Header header;
    String pathId;
    String section;
    Info info;

    factory IndexPageContent.fromJson(Map<String, dynamic> json) => IndexPageContent(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        contents: json["contents"] == null ? null : List<ContentContent>.from(json["contents"].map((x) => ContentContent.fromJson(x))),
        header: json["header"] == null ? null : Header.fromJson(json["header"]),
        pathId: json["path_id"] == null ? null : json["path_id"],
        section: json["section"] == null ? null : json["section"],
        info: json["info"] == null ? null : Info.fromJson(json["info"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "contents": contents == null ? null : List<dynamic>.from(contents.map((x) => x.toJson())),
        "header": header == null ? null : header.toJson(),
        "path_id": pathId == null ? null : pathId,
        "section": section == null ? null : section,
        "info": info == null ? null : info.toJson(),
    };
}

class ContentContent {
    ContentContent({
        this.id,
        this.pathId,
        this.rightsManagement,
        this.images,
        this.layout,
        this.name,
        this.vanity,
        this.type,
        this.infoUrl,
        this.loginRequired,
        this.weblink,
        this.programUrl,
        this.programPathId,
        this.label,
        this.description,
        this.country,
        this.details,
        this.availabilities,
        this.videoUrl,
        this.isLive,
        this.toptitle,
        this.subtitle,
        this.programName,
        this.durationInMinutes,
        this.duration,
        this.season,
        this.episode,
        this.episodeTitle,
        this.caption,
        this.image,
        this.subType,
        this.subId,
        this.menuPathId,
    });

    String id;
    String pathId;
    RightsManagement rightsManagement;
    Images images;
    Layout layout;
    String name;
    String vanity;
    Type type;
    String infoUrl;
    bool loginRequired;
    String weblink;
    String programUrl;
    String programPathId;
    String label;
    String description;
    String country;
    List<Detail> details;
    dynamic availabilities;
    String videoUrl;
    bool isLive;
    String toptitle;
    Subtitle subtitle;
    ProgramName programName;
    String durationInMinutes;
    String duration;
    String season;
    String episode;
    String episodeTitle;
    String caption;
    String image;
    SubType subType;
    String subId;
    String menuPathId;

    factory ContentContent.fromJson(Map<String, dynamic> json) => ContentContent(
        id: json["id"] == null ? null : json["id"],
        pathId: json["path_id"] == null ? null : json["path_id"],
        rightsManagement: json["rights_management"] == null ? null : RightsManagement.fromJson(json["rights_management"]),
        images: json["images"] == null ? null : Images.fromJson(json["images"]),
        layout: json["layout"] == null ? null : layoutValues.map[json["layout"]],
        name: json["name"],
        vanity: json["vanity"] == null ? null : json["vanity"],
        type: typeValues.map[json["type"]],
        infoUrl: json["info_url"] == null ? null : json["info_url"],
        loginRequired: json["login_required"] == null ? null : json["login_required"],
        weblink: json["weblink"],
        programUrl: json["program_url"] == null ? null : json["program_url"],
        programPathId: json["program_path_id"] == null ? null : json["program_path_id"],
        label: json["label"] == null ? null : json["label"],
        description: json["description"] == null ? null : json["description"],
        country: json["country"] == null ? null : json["country"],
        details: json["details"] == null ? null : List<Detail>.from(json["details"].map((x) => Detail.fromJson(x))),
        availabilities: json["availabilities"],
        videoUrl: json["video_url"] == null ? null : json["video_url"],
        isLive: json["is_live"] == null ? null : json["is_live"],
        toptitle: json["toptitle"] == null ? null : json["toptitle"],
        subtitle: json["subtitle"] == null ? null : subtitleValues.map[json["subtitle"]],
        programName: json["program_name"] == null ? null : programNameValues.map[json["program_name"]],
        durationInMinutes: json["duration_in_minutes"] == null ? null : json["duration_in_minutes"],
        duration: json["duration"] == null ? null : json["duration"],
        season: json["season"] == null ? null : json["season"],
        episode: json["episode"] == null ? null : json["episode"],
        episodeTitle: json["episode_title"] == null ? null : json["episode_title"],
        caption: json["caption"] == null ? null : json["caption"],
        image: json["image"] == null ? null : json["image"],
        subType: json["sub_type"] == null ? null : subTypeValues.map[json["sub_type"]],
        subId: json["sub_id"] == null ? null : json["sub_id"],
        menuPathId: json["menu_path_id"] == null ? null : json["menu_path_id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "path_id": pathId == null ? null : pathId,
        "rights_management": rightsManagement == null ? null : rightsManagement.toJson(),
        "images": images == null ? null : images.toJson(),
        "layout": layout == null ? null : layoutValues.reverse[layout],
        "name": name,
        "vanity": vanity == null ? null : vanity,
        "type": typeValues.reverse[type],
        "info_url": infoUrl == null ? null : infoUrl,
        "login_required": loginRequired == null ? null : loginRequired,
        "weblink": weblink,
        "program_url": programUrl == null ? null : programUrl,
        "program_path_id": programPathId == null ? null : programPathId,
        "label": label == null ? null : label,
        "description": description == null ? null : description,
        "country": country == null ? null : country,
        "details": details == null ? null : List<dynamic>.from(details.map((x) => x.toJson())),
        "availabilities": availabilities,
        "video_url": videoUrl == null ? null : videoUrl,
        "is_live": isLive == null ? null : isLive,
        "toptitle": toptitle == null ? null : toptitle,
        "subtitle": subtitle == null ? null : subtitleValues.reverse[subtitle],
        "program_name": programName == null ? null : programNameValues.reverse[programName],
        "duration_in_minutes": durationInMinutes == null ? null : durationInMinutes,
        "duration": duration == null ? null : duration,
        "season": season == null ? null : season,
        "episode": episode == null ? null : episode,
        "episode_title": episodeTitle == null ? null : episodeTitle,
        "caption": caption == null ? null : caption,
        "image": image == null ? null : image,
        "sub_type": subType == null ? null : subTypeValues.reverse[subType],
        "sub_id": subId == null ? null : subId,
        "menu_path_id": menuPathId == null ? null : menuPathId,
    };
}

class Detail {
    Detail({
        this.type,
        this.key,
        this.value,
    });

    String type;
    String key;
    String value;

    factory Detail.fromJson(Map<String, dynamic> json) => Detail(
        type: json["type"],
        key: json["key"],
        value: json["value"],
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "key": key,
        "value": value,
    };
}

class Images {
    Images({
        this.landscape,
        this.portrait,
        this.square,
        this.landscape43,
        this.portrait43,
        this.portraitLogo,
        this.landscapeLogo,
        this.marketingSmall,
        this.marketingMedium,
        this.marketingLarge,
        this.marketingTv,
    });

    String landscape;
    String portrait;
    String square;
    String landscape43;
    String portrait43;
    String portraitLogo;
    String landscapeLogo;
    String marketingSmall;
    String marketingMedium;
    String marketingLarge;
    String marketingTv;

    factory Images.fromJson(Map<String, dynamic> json) => Images(
        landscape: json["landscape"] == null ? null : json["landscape"],
        portrait: json["portrait"] == null ? null : json["portrait"],
        square: json["square"] == null ? null : json["square"],
        landscape43: json["landscape43"] == null ? null : json["landscape43"],
        portrait43: json["portrait43"] == null ? null : json["portrait43"],
        portraitLogo: json["portrait_logo"] == null ? null : json["portrait_logo"],
        landscapeLogo: json["landscape_logo"] == null ? null : json["landscape_logo"],
        marketingSmall: json["marketing_small"] == null ? null : json["marketing_small"],
        marketingMedium: json["marketing_medium"] == null ? null : json["marketing_medium"],
        marketingLarge: json["marketing_large"] == null ? null : json["marketing_large"],
        marketingTv: json["marketing_tv"] == null ? null : json["marketing_tv"],
    );

    Map<String, dynamic> toJson() => {
        "landscape": landscape == null ? null : landscape,
        "portrait": portrait == null ? null : portrait,
        "square": square == null ? null : square,
        "landscape43": landscape43 == null ? null : landscape43,
        "portrait43": portrait43 == null ? null : portrait43,
        "portrait_logo": portraitLogo == null ? null : portraitLogo,
        "landscape_logo": landscapeLogo == null ? null : landscapeLogo,
        "marketing_small": marketingSmall == null ? null : marketingSmall,
        "marketing_medium": marketingMedium == null ? null : marketingMedium,
        "marketing_large": marketingLarge == null ? null : marketingLarge,
        "marketing_tv": marketingTv == null ? null : marketingTv,
    };
}

enum Layout { SINGLE, MULTI }

final layoutValues = EnumValues({
    "multi": Layout.MULTI,
    "single": Layout.SINGLE
});

enum ProgramName { UNA_PEZZA_DI_LUNDINI, PLAYLIST24 }

final programNameValues = EnumValues({
    "Playlist24": ProgramName.PLAYLIST24,
    "Una Pezza di Lundini": ProgramName.UNA_PEZZA_DI_LUNDINI
});

class RightsManagement {
    RightsManagement({
        this.rights,
    });

    Rights rights;

    factory RightsManagement.fromJson(Map<String, dynamic> json) => RightsManagement(
        rights: Rights.fromJson(json["rights"]),
    );

    Map<String, dynamic> toJson() => {
        "rights": rights.toJson(),
    };
}

class Rights {
    Rights({
        this.offline,
        this.geoprotection,
        this.drm,
    });

    Offline offline;
    Geoprotection geoprotection;
    Drm drm;

    factory Rights.fromJson(Map<String, dynamic> json) => Rights(
        offline: Offline.fromJson(json["offline"]),
        geoprotection: Geoprotection.fromJson(json["geoprotection"]),
        drm: json["drm"] == null ? null : Drm.fromJson(json["drm"]),
    );

    Map<String, dynamic> toJson() => {
        "offline": offline.toJson(),
        "geoprotection": geoprotection.toJson(),
        "drm": drm == null ? null : drm.toJson(),
    };
}

class Drm {
    Drm({
        this.diretta,
        this.vod,
    });

    bool diretta;
    bool vod;

    factory Drm.fromJson(Map<String, dynamic> json) => Drm(
        diretta: json["Diretta"],
        vod: json["VOD"],
    );

    Map<String, dynamic> toJson() => {
        "Diretta": diretta,
        "VOD": vod,
    };
}

class Geoprotection {
    Geoprotection({
        this.italy,
        this.europe,
    });

    bool italy;
    bool europe;

    factory Geoprotection.fromJson(Map<String, dynamic> json) => Geoprotection(
        italy: json["italy"] == null ? null : json["italy"],
        europe: json["europe"] == null ? null : json["europe"],
    );

    Map<String, dynamic> toJson() => {
        "italy": italy == null ? null : italy,
        "europe": europe == null ? null : europe,
    };
}

class Offline {
    Offline({
        this.web,
        this.smartphone,
        this.smartTv,
        this.tablet,
    });

    bool web;
    bool smartphone;
    bool smartTv;
    bool tablet;

    factory Offline.fromJson(Map<String, dynamic> json) => Offline(
        web: json["Web"] == null ? null : json["Web"],
        smartphone: json["Smartphone"] == null ? null : json["Smartphone"],
        smartTv: json["Smart Tv"] == null ? null : json["Smart Tv"],
        tablet: json["Tablet"] == null ? null : json["Tablet"],
    );

    Map<String, dynamic> toJson() => {
        "Web": web == null ? null : web,
        "Smartphone": smartphone == null ? null : smartphone,
        "Smart Tv": smartTv == null ? null : smartTv,
        "Tablet": tablet == null ? null : tablet,
    };
}

enum SubType { RAI_PLAY_V2_TIPOLOGIA_PAGE, RAI_PLAY_SPECIALE_PAGE, RAI_PLAY_V2_GENERE_PAGE }

final subTypeValues = EnumValues({
    "RaiPlay Speciale Page": SubType.RAI_PLAY_SPECIALE_PAGE,
    "RaiPlay V2 Genere Page": SubType.RAI_PLAY_V2_GENERE_PAGE,
    "RaiPlay V2 Tipologia Page": SubType.RAI_PLAY_V2_TIPOLOGIA_PAGE
});

enum Subtitle { ST_2022_UNA_PEZZA_DI_LUNDINI, ST_2022_PLAYLIST24, PLAYLIST24 }

final subtitleValues = EnumValues({
    "Playlist24": Subtitle.PLAYLIST24,
    "St 2022 - Playlist24": Subtitle.ST_2022_PLAYLIST24,
    "St 2022 - Una Pezza di Lundini": Subtitle.ST_2022_UNA_PEZZA_DI_LUNDINI
});

enum Type { RAI_PLAY_PROGRAMMA_ITEM, RAI_PLAY_VIDEO_ITEM, RAI_PLAY_MARKETING_AUTOMATION_ITEM, RAI_PLAY_RACCOLTA_ITEM, RAI_PLAY_GENERE_ITEM, RAI_PLAY_LINK_ITEM }

final typeValues = EnumValues({
    "RaiPlay Genere Item": Type.RAI_PLAY_GENERE_ITEM,
    "RaiPlay Link Item": Type.RAI_PLAY_LINK_ITEM,
    "RaiPlay Marketing Automation Item": Type.RAI_PLAY_MARKETING_AUTOMATION_ITEM,
    "RaiPlay Programma Item": Type.RAI_PLAY_PROGRAMMA_ITEM,
    "RaiPlay Raccolta Item": Type.RAI_PLAY_RACCOLTA_ITEM,
    "RaiPlay Video Item": Type.RAI_PLAY_VIDEO_ITEM
});

class Header {
    Header({
        this.label,
        this.weblink,
        this.pathId,
        this.subType,
    });

    String label;
    String weblink;
    String pathId;
    SubType subType;

    factory Header.fromJson(Map<String, dynamic> json) => Header(
        label: json["label"],
        weblink: json["weblink"] == null ? null : json["weblink"],
        pathId: json["path_id"] == null ? null : json["path_id"],
        subType: json["sub_type"] == null ? null : subTypeValues.map[json["sub_type"]],
    );

    Map<String, dynamic> toJson() => {
        "label": label,
        "weblink": weblink == null ? null : weblink,
        "path_id": pathId == null ? null : pathId,
        "sub_type": subType == null ? null : subTypeValues.reverse[subType],
    };
}

class Info {
    Info({
        this.img,
        this.title,
        this.description,
    });

    String img;
    String title;
    String description;

    factory Info.fromJson(Map<String, dynamic> json) => Info(
        img: json["img"],
        title: json["title"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "img": img,
        "title": title,
        "description": description,
    };
}

class TrackInfo {
    TrackInfo({
        this.id,
        this.domain,
        this.platform,
        this.mediaType,
        this.pageType,
        this.editor,
        this.year,
        this.editYear,
        this.section,
        this.subSection,
        this.content,
        this.title,
        this.channel,
        this.date,
        this.updateDate,
        this.typology,
        this.genres,
        this.subGenres,
        this.programTitle,
        this.programTypology,
        this.programGenres,
        this.programSubGenres,
        this.edition,
        this.season,
        this.episodeNumber,
        this.episodeTitle,
        this.form,
        this.listaDateMo,
        this.pageUrl,
        this.nodmp,
        this.dfp,
    });

    String id;
    String domain;
    String platform;
    String mediaType;
    String pageType;
    String editor;
    String year;
    String editYear;
    String section;
    String subSection;
    String content;
    String title;
    String channel;
    String date;
    String updateDate;
    String typology;
    List<dynamic> genres;
    List<dynamic> subGenres;
    String programTitle;
    String programTypology;
    List<dynamic> programGenres;
    List<dynamic> programSubGenres;
    String edition;
    String season;
    String episodeNumber;
    String episodeTitle;
    String form;
    List<dynamic> listaDateMo;
    String pageUrl;
    bool nodmp;
    Dfp dfp;

    factory TrackInfo.fromJson(Map<String, dynamic> json) => TrackInfo(
        id: json["id"],
        domain: json["domain"],
        platform: json["platform"],
        mediaType: json["media_type"],
        pageType: json["page_type"],
        editor: json["editor"],
        year: json["year"],
        editYear: json["edit_year"],
        section: json["section"],
        subSection: json["sub_section"],
        content: json["content"],
        title: json["title"],
        channel: json["channel"],
        date: json["date"],
        updateDate: json["update_date"],
        typology: json["typology"],
        genres: List<dynamic>.from(json["genres"].map((x) => x)),
        subGenres: List<dynamic>.from(json["sub_genres"].map((x) => x)),
        programTitle: json["program_title"],
        programTypology: json["program_typology"],
        programGenres: List<dynamic>.from(json["program_genres"].map((x) => x)),
        programSubGenres: List<dynamic>.from(json["program_sub_genres"].map((x) => x)),
        edition: json["edition"],
        season: json["season"],
        episodeNumber: json["episode_number"],
        episodeTitle: json["episode_title"],
        form: json["form"],
        listaDateMo: List<dynamic>.from(json["listaDateMo"].map((x) => x)),
        pageUrl: json["page_url"],
        nodmp: json["nodmp"],
        dfp: Dfp.fromJson(json["dfp"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "domain": domain,
        "platform": platform,
        "media_type": mediaType,
        "page_type": pageType,
        "editor": editor,
        "year": year,
        "edit_year": editYear,
        "section": section,
        "sub_section": subSection,
        "content": content,
        "title": title,
        "channel": channel,
        "date": date,
        "update_date": updateDate,
        "typology": typology,
        "genres": List<dynamic>.from(genres.map((x) => x)),
        "sub_genres": List<dynamic>.from(subGenres.map((x) => x)),
        "program_title": programTitle,
        "program_typology": programTypology,
        "program_genres": List<dynamic>.from(programGenres.map((x) => x)),
        "program_sub_genres": List<dynamic>.from(programSubGenres.map((x) => x)),
        "edition": edition,
        "season": season,
        "episode_number": episodeNumber,
        "episode_title": episodeTitle,
        "form": form,
        "listaDateMo": List<dynamic>.from(listaDateMo.map((x) => x)),
        "page_url": pageUrl,
        "nodmp": nodmp,
        "dfp": dfp.toJson(),
    };
}

class Dfp {
    Dfp();

    factory Dfp.fromJson(Map<String, dynamic> json) => Dfp(
    );

    Map<String, dynamic> toJson() => {
    };
}

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
