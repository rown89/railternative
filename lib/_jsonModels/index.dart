// To parse this JSON data, do
//
//     final indexPage = indexPageFromJson(jsonString);

import 'dart:convert';

IndexPage indexPageFromJson(String str) => IndexPage.fromJson(json.decode(str));

String indexPageToJson(IndexPage data) => json.encode(data.toJson());

class IndexPage {
    final String title;
    final String uniquename;
    final List<IndexPageContent> contents;
    final TrackInfo trackInfo;

    IndexPage({
        this.title,
        this.uniquename,
        this.contents,
        this.trackInfo,
    });

    factory IndexPage.fromJson(Map<String, dynamic> json) => IndexPage(
        title: json["title"] == null ? null : json["title"],
        uniquename: json["uniquename"] == null ? null : json["uniquename"],
        contents: json["contents"] == null ? null : List<IndexPageContent>.from(json["contents"].map((x) => IndexPageContent.fromJson(x))),
        trackInfo: json["track_info"] == null ? null : TrackInfo.fromJson(json["track_info"]),
    );

    Map<String, dynamic> toJson() => {
        "title": title == null ? null : title,
        "uniquename": uniquename == null ? null : uniquename,
        "contents": contents == null ? null : List<dynamic>.from(contents.map((x) => x.toJson())),
        "track_info": trackInfo == null ? null : trackInfo.toJson(),
    };
}

class IndexPageContent {
    final String id;
    final String name;
    final String type;
    final List<ContentContent> contents;
    final Section section;
    final Info info;
    final String useCase;
    final String mode;
    final String layout;
    final String fallbackList;

    IndexPageContent({
        this.id,
        this.name,
        this.type,
        this.contents,
        this.section,
        this.info,
        this.useCase,
        this.mode,
        this.layout,
        this.fallbackList,
    });

    factory IndexPageContent.fromJson(Map<String, dynamic> json) => IndexPageContent(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        type: json["type"] == null ? null : json["type"],
        contents: json["contents"] == null ? null : List<ContentContent>.from(json["contents"].map((x) => ContentContent.fromJson(x))),
        section: json["section"] == null ? null : sectionValues.map[json["section"]],
        info: json["info"] == null ? null : Info.fromJson(json["info"]),
        useCase: json["use_case"] == null ? null : json["use_case"],
        mode: json["mode"] == null ? null : json["mode"],
        layout: json["layout"] == null ? null : json["layout"],
        fallbackList: json["fallback_list"] == null ? null : json["fallback_list"],
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "type": type == null ? null : type,
        "contents": contents == null ? null : List<dynamic>.from(contents.map((x) => x.toJson())),
        "section": section == null ? null : sectionValues.reverse[section],
        "info": info == null ? null : info.toJson(),
        "use_case": useCase == null ? null : useCase,
        "mode": mode == null ? null : mode,
        "layout": layout == null ? null : layout,
        "fallback_list": fallbackList == null ? null : fallbackList,
    };
}

class ContentContent {
    final String id;
    final String pathId;
    final RightsManagement rightsManagement;
    final Images images;
    final Layout layout;
    final String name;
    final Type type;
    final String infoUrl;
    final bool loginRequired;
    final String weblink;
    final String programUrl;
    final String programPathId;
    final String label;
    final String description;
    final String vanity;
    final String country;
    final List<Detail> details;
    final String videoUrl;
    final bool isLive;
    final String subtitle;
    final ProgramName programName;
    final String durationInMinutes;
    final String caption;
    final String subType;
    final String subId;

    ContentContent({
        this.id,
        this.pathId,
        this.rightsManagement,
        this.images,
        this.layout,
        this.name,
        this.type,
        this.infoUrl,
        this.loginRequired,
        this.weblink,
        this.programUrl,
        this.programPathId,
        this.label,
        this.description,
        this.vanity,
        this.country,
        this.details,
        this.videoUrl,
        this.isLive,
        this.subtitle,
        this.programName,
        this.durationInMinutes,
        this.caption,
        this.subType,
        this.subId,
    });

    factory ContentContent.fromJson(Map<String, dynamic> json) => ContentContent(
        id: json["id"] == null ? null : json["id"],
        pathId: json["path_id"] == null ? null : json["path_id"],
        rightsManagement: json["rights_management"] == null ? null : RightsManagement.fromJson(json["rights_management"]),
        images: json["images"] == null ? null : Images.fromJson(json["images"]),
        layout: json["layout"] == null ? null : layoutValues.map[json["layout"]],
        name: json["name"] == null ? null : json["name"],
        type: json["type"] == null ? null : typeValues.map[json["type"]],
        infoUrl: json["info_url"] == null ? null : json["info_url"],
        loginRequired: json["login_required"] == null ? null : json["login_required"],
        weblink: json["weblink"] == null ? null : json["weblink"],
        programUrl: json["program_url"] == null ? null : json["program_url"],
        programPathId: json["program_path_id"] == null ? null : json["program_path_id"],
        label: json["label"] == null ? null : json["label"],
        description: json["description"] == null ? null : json["description"],
        vanity: json["vanity"] == null ? null : json["vanity"],
        country: json["country"] == null ? null : json["country"],
        details: json["details"] == null ? null : List<Detail>.from(json["details"].map((x) => Detail.fromJson(x))),
        videoUrl: json["video_url"] == null ? null : json["video_url"],
        isLive: json["is_live"] == null ? null : json["is_live"],
        subtitle: json["subtitle"] == null ? null : json["subtitle"],
        programName: json["program_name"] == null ? null : programNameValues.map[json["program_name"]],
        durationInMinutes: json["duration_in_minutes"] == null ? null : json["duration_in_minutes"],
        caption: json["caption"] == null ? null : json["caption"],
        subType: json["sub_type"] == null ? null : json["sub_type"],
        subId: json["sub_id"] == null ? null : json["sub_id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "path_id": pathId == null ? null : pathId,
        "rights_management": rightsManagement == null ? null : rightsManagement.toJson(),
        "images": images == null ? null : images.toJson(),
        "layout": layout == null ? null : layoutValues.reverse[layout],
        "name": name == null ? null : name,
        "type": type == null ? null : typeValues.reverse[type],
        "info_url": infoUrl == null ? null : infoUrl,
        "login_required": loginRequired == null ? null : loginRequired,
        "weblink": weblink == null ? null : weblink,
        "program_url": programUrl == null ? null : programUrl,
        "program_path_id": programPathId == null ? null : programPathId,
        "label": label == null ? null : label,
        "description": description == null ? null : description,
        "vanity": vanity == null ? null : vanity,
        "country": country == null ? null : country,
        "details": details == null ? null : List<dynamic>.from(details.map((x) => x.toJson())),
        "video_url": videoUrl == null ? null : videoUrl,
        "is_live": isLive == null ? null : isLive,
        "subtitle": subtitle == null ? null : subtitle,
        "program_name": programName == null ? null : programNameValues.reverse[programName],
        "duration_in_minutes": durationInMinutes == null ? null : durationInMinutes,
        "caption": caption == null ? null : caption,
        "sub_type": subType == null ? null : subType,
        "sub_id": subId == null ? null : subId,
    };
}

class Detail {
    final String type;
    final String key;
    final String value;

    Detail({
        this.type,
        this.key,
        this.value,
    });

    factory Detail.fromJson(Map<String, dynamic> json) => Detail(
        type: json["type"] == null ? null : json["type"],
        key: json["key"] == null ? null : json["key"],
        value: json["value"] == null ? null : json["value"],
    );

    Map<String, dynamic> toJson() => {
        "type": type == null ? null : type,
        "key": key == null ? null : key,
        "value": value == null ? null : value,
    };
}

class Images {
    final String landscape;
    final String portrait;
    final String square;
    final String landscape43;
    final String portrait43;
    final String portraitLogo;
    final String landscapeLogo;
    final String marketingSmall;
    final String marketingMedium;
    final String marketingLarge;
    final String marketingTv;

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

enum Layout { MULTI, SINGLE }

final layoutValues = EnumValues({
    "multi": Layout.MULTI,
    "single": Layout.SINGLE
});

enum ProgramName { PLAYLIST24, RADIO2_SOCIAL_CLUB, TANTO_NON_USCIVO_LO_STESSO }

final programNameValues = EnumValues({
    "Playlist24": ProgramName.PLAYLIST24,
    "Radio2 Social Club": ProgramName.RADIO2_SOCIAL_CLUB,
    "Tanto Non Uscivo Lo Stesso": ProgramName.TANTO_NON_USCIVO_LO_STESSO
});

class RightsManagement {
    final Rights rights;

    RightsManagement({
        this.rights,
    });

    factory RightsManagement.fromJson(Map<String, dynamic> json) => RightsManagement(
        rights: json["rights"] == null ? null : Rights.fromJson(json["rights"]),
    );

    Map<String, dynamic> toJson() => {
        "rights": rights == null ? null : rights.toJson(),
    };
}

class Rights {
    final Offline offline;
    final Geoprotection geoprotection;
    final Drm drm;

    Rights({
        this.offline,
        this.geoprotection,
        this.drm,
    });

    factory Rights.fromJson(Map<String, dynamic> json) => Rights(
        offline: json["offline"] == null ? null : Offline.fromJson(json["offline"]),
        geoprotection: json["geoprotection"] == null ? null : Geoprotection.fromJson(json["geoprotection"]),
        drm: json["drm"] == null ? null : Drm.fromJson(json["drm"]),
    );

    Map<String, dynamic> toJson() => {
        "offline": offline == null ? null : offline.toJson(),
        "geoprotection": geoprotection == null ? null : geoprotection.toJson(),
        "drm": drm == null ? null : drm.toJson(),
    };
}

class Drm {
    final bool diretta;
    final bool vod;

    Drm({
        this.diretta,
        this.vod,
    });

    factory Drm.fromJson(Map<String, dynamic> json) => Drm(
        diretta: json["Diretta"] == null ? null : json["Diretta"],
        vod: json["VOD"] == null ? null : json["VOD"],
    );

    Map<String, dynamic> toJson() => {
        "Diretta": diretta == null ? null : diretta,
        "VOD": vod == null ? null : vod,
    };
}

class Geoprotection {
    final bool europe;
    final bool italy;

    Geoprotection({
        this.europe,
        this.italy,
    });

    factory Geoprotection.fromJson(Map<String, dynamic> json) => Geoprotection(
        europe: json["europe"] == null ? null : json["europe"],
        italy: json["italy"] == null ? null : json["italy"],
    );

    Map<String, dynamic> toJson() => {
        "europe": europe == null ? null : europe,
        "italy": italy == null ? null : italy,
    };
}

class Offline {
    final bool tablet;
    final bool web;
    final bool smartTv;
    final bool smartphone;

    Offline({
        this.tablet,
        this.web,
        this.smartTv,
        this.smartphone,
    });

    factory Offline.fromJson(Map<String, dynamic> json) => Offline(
        tablet: json["Tablet"] == null ? null : json["Tablet"],
        web: json["Web"] == null ? null : json["Web"],
        smartTv: json["Smart Tv"] == null ? null : json["Smart Tv"],
        smartphone: json["Smartphone"] == null ? null : json["Smartphone"],
    );

    Map<String, dynamic> toJson() => {
        "Tablet": tablet == null ? null : tablet,
        "Web": web == null ? null : web,
        "Smart Tv": smartTv == null ? null : smartTv,
        "Smartphone": smartphone == null ? null : smartphone,
    };
}

enum Type { RAI_PLAY_PROGRAMMA_ITEM, RAI_PLAY_VIDEO_ITEM, RAI_PLAY_MARKETING_AUTOMATION_ITEM, RAI_PLAY_RACCOLTA_ITEM }

final typeValues = EnumValues({
    "RaiPlay Marketing Automation Item": Type.RAI_PLAY_MARKETING_AUTOMATION_ITEM,
    "RaiPlay Programma Item": Type.RAI_PLAY_PROGRAMMA_ITEM,
    "RaiPlay Raccolta Item": Type.RAI_PLAY_RACCOLTA_ITEM,
    "RaiPlay Video Item": Type.RAI_PLAY_VIDEO_ITEM
});

class Info {
    final String img;
    final String title;
    final Description description;

    Info({
        this.img,
        this.title,
        this.description,
    });

    factory Info.fromJson(Map<String, dynamic> json) => Info(
        img: json["img"] == null ? null : json["img"],
        title: json["title"] == null ? null : json["title"],
        description: json["description"] == null ? null : descriptionValues.map[json["description"]],
    );

    Map<String, dynamic> toJson() => {
        "img": img == null ? null : img,
        "title": title == null ? null : title,
        "description": description == null ? null : descriptionValues.reverse[description],
    };
}

enum Description { QUESTO_IL_CONTINUA_A_GUARDARE, EMPTY, I_PROGRAMMI_CHE_HAI_INSERTO_NELLA_TUA_LISTA }

final descriptionValues = EnumValues({
    "": Description.EMPTY,
    "I programmi che hai inserto nella tua lista": Description.I_PROGRAMMI_CHE_HAI_INSERTO_NELLA_TUA_LISTA,
    "Questo è il continua a guardare": Description.QUESTO_IL_CONTINUA_A_GUARDARE
});

enum Section { CONTINUA_A_GUARDARE, EMPTY, PREFERITI }

final sectionValues = EnumValues({
    "Continua a guardare": Section.CONTINUA_A_GUARDARE,
    "": Section.EMPTY,
    "Preferiti": Section.PREFERITI
});

class TrackInfo {
    final String id;
    final String domain;
    final String platform;
    final String mediaType;
    final String pageType;
    final String editor;
    final String year;
    final String editYear;
    final String section;
    final String subSection;
    final String content;
    final String title;
    final String channel;
    final DateTime date;
    final String typology;
    final dynamic genres;
    final dynamic subGenres;
    final String programTitle;
    final String programTypology;
    final dynamic programGenres;
    final dynamic programSubGenres;
    final String edition;
    final String season;
    final String episodeNumber;
    final String episodeTitle;
    final String form;
    final Dfp dfp;
    final String sasParams;

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
        this.dfp,
        this.sasParams,
    });

    factory TrackInfo.fromJson(Map<String, dynamic> json) => TrackInfo(
        id: json["id"] == null ? null : json["id"],
        domain: json["domain"] == null ? null : json["domain"],
        platform: json["platform"] == null ? null : json["platform"],
        mediaType: json["media_type"] == null ? null : json["media_type"],
        pageType: json["page_type"] == null ? null : json["page_type"],
        editor: json["editor"] == null ? null : json["editor"],
        year: json["year"] == null ? null : json["year"],
        editYear: json["edit_year"] == null ? null : json["edit_year"],
        section: json["section"] == null ? null : json["section"],
        subSection: json["sub_section"] == null ? null : json["sub_section"],
        content: json["content"] == null ? null : json["content"],
        title: json["title"] == null ? null : json["title"],
        channel: json["channel"] == null ? null : json["channel"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        typology: json["typology"] == null ? null : json["typology"],
        genres: json["genres"],
        subGenres: json["sub_genres"],
        programTitle: json["program_title"] == null ? null : json["program_title"],
        programTypology: json["program_typology"] == null ? null : json["program_typology"],
        programGenres: json["program_genres"],
        programSubGenres: json["program_sub_genres"],
        edition: json["edition"] == null ? null : json["edition"],
        season: json["season"] == null ? null : json["season"],
        episodeNumber: json["episode_number"] == null ? null : json["episode_number"],
        episodeTitle: json["episode_title"] == null ? null : json["episode_title"],
        form: json["form"] == null ? null : json["form"],
        dfp: json["dfp"] == null ? null : Dfp.fromJson(json["dfp"]),
        sasParams: json["sas_params"] == null ? null : json["sas_params"],
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "domain": domain == null ? null : domain,
        "platform": platform == null ? null : platform,
        "media_type": mediaType == null ? null : mediaType,
        "page_type": pageType == null ? null : pageType,
        "editor": editor == null ? null : editor,
        "year": year == null ? null : year,
        "edit_year": editYear == null ? null : editYear,
        "section": section == null ? null : section,
        "sub_section": subSection == null ? null : subSection,
        "content": content == null ? null : content,
        "title": title == null ? null : title,
        "channel": channel == null ? null : channel,
        "date": date == null ? null : "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "typology": typology == null ? null : typology,
        "genres": genres,
        "sub_genres": subGenres,
        "program_title": programTitle == null ? null : programTitle,
        "program_typology": programTypology == null ? null : programTypology,
        "program_genres": programGenres,
        "program_sub_genres": programSubGenres,
        "edition": edition == null ? null : edition,
        "season": season == null ? null : season,
        "episode_number": episodeNumber == null ? null : episodeNumber,
        "episode_title": episodeTitle == null ? null : episodeTitle,
        "form": form == null ? null : form,
        "dfp": dfp == null ? null : dfp.toJson(),
        "sas_params": sasParams == null ? null : sasParams,
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
