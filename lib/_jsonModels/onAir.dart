// To parse this JSON data, do
//
//     final onAir = onAirFromJson(jsonString);

import 'dart:convert';

OnAir onAirFromJson(String str) => OnAir.fromJson(json.decode(str));

String onAirToJson(OnAir data) => json.encode(data.toJson());

class OnAir {
    OnAir({
        this.onAir,
    });

    List<OnAirElement> onAir;

    factory OnAir.fromJson(Map<String, dynamic> json) => OnAir(
        onAir: List<OnAirElement>.from(json["on_air"].map((x) => OnAirElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "on_air": List<dynamic>.from(onAir.map((x) => x.toJson())),
    };
}

class OnAirElement {
    OnAirElement({
        this.channel,
        this.currentItem,
        this.nextItem,
    });

    String channel;
    TItem currentItem;
    TItem nextItem;

    factory OnAirElement.fromJson(Map<String, dynamic> json) => OnAirElement(
        channel: json["channel"],
        currentItem: TItem.fromJson(json["currentItem"]),
        nextItem: TItem.fromJson(json["nextItem"]),
    );

    Map<String, dynamic> toJson() => {
        "channel": channel,
        "currentItem": currentItem.toJson(),
        "nextItem": nextItem.toJson(),
    };
}

class TItem {
    TItem({
        this.id,
        this.playlistId,
        this.name,
        this.episodeTitle,
        this.episode,
        this.season,
        this.description,
        this.channel,
        this.date,
        this.hour,
        this.duration,
        this.durationInMinutes,
        this.pathId,
        this.hasVideo,
        this.weblink,
        this.image,
        this.program,
        this.trackInfo,
        this.techDatetime,
    });

    String id;
    String playlistId;
    String name;
    String episodeTitle;
    String episode;
    String season;
    String description;
    String channel;
    Date date;
    String hour;
    String duration;
    String durationInMinutes;
    String pathId;
    bool hasVideo;
    String weblink;
    String image;
    Program program;
    TrackInfo trackInfo;
    String techDatetime;

    factory TItem.fromJson(Map<String, dynamic> json) => TItem(
        id: json["id"],
        playlistId: json["playlist_id"],
        name: json["name"],
        episodeTitle: json["episode_title"],
        episode: json["episode"],
        season: json["season"],
        description: json["description"],
        channel: json["channel"],
        date: dateValues.map[json["date"]],
        hour: json["hour"],
        duration: json["duration"],
        durationInMinutes: json["duration_in_minutes"],
        pathId: json["path_id"],
        hasVideo: json["has_video"],
        weblink: json["weblink"],
        image: json["image"],
        program: Program.fromJson(json["program"]),
        trackInfo: TrackInfo.fromJson(json["track_info"]),
        techDatetime: json["tech_datetime"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "playlist_id": playlistId,
        "name": name,
        "episode_title": episodeTitle,
        "episode": episode,
        "season": season,
        "description": description,
        "channel": channel,
        "date": dateValues.reverse[date],
        "hour": hour,
        "duration": duration,
        "duration_in_minutes": durationInMinutes,
        "path_id": pathId,
        "has_video": hasVideo,
        "weblink": weblink,
        "image": image,
        "program": program.toJson(),
        "track_info": trackInfo.toJson(),
        "tech_datetime": techDatetime,
    };
}

enum Date { THE_03062022, THE_04062022, EMPTY }

final dateValues = EnumValues({
    "": Date.EMPTY,
    "03/06/2022": Date.THE_03062022,
    "04/06/2022": Date.THE_04062022
});

class Program {
    Program({
        this.name,
        this.pathId,
        this.infoUrl,
        this.weblink,
    });

    String name;
    String pathId;
    String infoUrl;
    String weblink;

    factory Program.fromJson(Map<String, dynamic> json) => Program(
        name: json["name"],
        pathId: json["path_id"],
        infoUrl: json["info_url"],
        weblink: json["weblink"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "path_id": pathId,
        "info_url": infoUrl,
        "weblink": weblink,
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
        this.section,
        this.subSection,
        this.programTitle,
        this.episodeNumber,
        this.form,
        this.title,
        this.episodeTitle,
        this.season,
        this.pathId,
        this.channel,
        this.date,
        this.content,
    });

    String id;
    Domain domain;
    Platform platform;
    Type mediaType;
    Type pageType;
    Domain editor;
    Section section;
    String subSection;
    String programTitle;
    String episodeNumber;
    Form form;
    String title;
    String episodeTitle;
    String season;
    String pathId;
    String channel;
    String date;
    Content content;

    factory TrackInfo.fromJson(Map<String, dynamic> json) => TrackInfo(
        id: json["id"],
        domain: domainValues.map[json["domain"]],
        platform: platformValues.map[json["platform"]],
        mediaType: typeValues.map[json["media_type"]],
        pageType: typeValues.map[json["page_type"]],
        editor: domainValues.map[json["editor"]],
        section: sectionValues.map[json["section"]],
        subSection: json["sub_section"],
        programTitle: json["program_title"],
        episodeNumber: json["episode_number"],
        form: formValues.map[json["form"]],
        title: json["title"],
        episodeTitle: json["episode_title"],
        season: json["season"],
        pathId: json["path_id"],
        channel: json["channel"],
        date: json["date"],
        content: contentValues.map[json["content"]],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "domain": domainValues.reverse[domain],
        "platform": platformValues.reverse[platform],
        "media_type": typeValues.reverse[mediaType],
        "page_type": typeValues.reverse[pageType],
        "editor": domainValues.reverse[editor],
        "section": sectionValues.reverse[section],
        "sub_section": subSection,
        "program_title": programTitle,
        "episode_number": episodeNumber,
        "form": formValues.reverse[form],
        "title": title,
        "episode_title": episodeTitle,
        "season": season,
        "path_id": pathId,
        "channel": channel,
        "date": date,
        "content": contentValues.reverse[content],
    };
}

enum Content { PAGINA_FOGLIA }

final contentValues = EnumValues({
    "pagina foglia": Content.PAGINA_FOGLIA
});

enum Domain { RAIPLAY }

final domainValues = EnumValues({
    "raiplay": Domain.RAIPLAY
});

enum Form { INTEGRALE }

final formValues = EnumValues({
    "integrale": Form.INTEGRALE
});

enum Type { LIVE }

final typeValues = EnumValues({
    "live": Type.LIVE
});

enum Platform { PLATFORM }

final platformValues = EnumValues({
    "[platform]": Platform.PLATFORM
});

enum Section { DIRETTE }

final sectionValues = EnumValues({
    "dirette": Section.DIRETTE
});

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
