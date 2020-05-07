// To parse this JSON data, do
//
//     final onAir = onAirFromJson(jsonString);

import 'dart:convert';

OnAir onAirFromJson(String str) => OnAir.fromJson(json.decode(str));

String onAirToJson(OnAir data) => json.encode(data.toJson());

class OnAir {
    final List<OnAirElement> onAir;

    OnAir({
        this.onAir,
    });

    factory OnAir.fromJson(Map<String, dynamic> json) => OnAir(
        onAir: List<OnAirElement>.from(json["on_air"].map((x) => OnAirElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "on_air": List<dynamic>.from(onAir.map((x) => x.toJson())),
    };
}

class OnAirElement {
    final String channel;
    final TItem currentItem;
    final TItem nextItem;

    OnAirElement({
        this.channel,
        this.currentItem,
        this.nextItem,
    });

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
    final String id;
    final String playlistId;
    final String name;
    final String episodeTitle;
    final String episode;
    final String season;
    final String description;
    final String channel;
    final Date date;
    final String hour;
    final String duration;
    final String durationInMinutes;
    final String pathId;
    final bool hasVideo;
    final String weblink;
    final String image;
    final Program program;
    final TrackInfo trackInfo;
    final TechDatetime techDatetime;

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
        techDatetime: techDatetimeValues.map[json["tech_datetime"]],
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
        "tech_datetime": techDatetimeValues.reverse[techDatetime],
    };
}

enum Date { THE_07052020, EMPTY }

final dateValues = EnumValues({
    "": Date.EMPTY,
    "07/05/2020": Date.THE_07052020
});

class Program {
    final String name;
    final String pathId;
    final String infoUrl;
    final String weblink;

    Program({
        this.name,
        this.pathId,
        this.infoUrl,
        this.weblink,
    });

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

enum TechDatetime { EMPTY, THE_07052020032314 }

final techDatetimeValues = EnumValues({
    "": TechDatetime.EMPTY,
    "07-05-2020 03:23:14": TechDatetime.THE_07052020032314
});

class TrackInfo {
    final String id;
    final Domain domain;
    final Platform platform;
    final Type mediaType;
    final Type pageType;
    final Domain editor;
    final Section section;
    final String subSection;
    final String programTitle;
    final String episodeNumber;
    final Form form;
    final String title;
    final String episodeTitle;
    final String season;
    final String pathId;
    final String channel;
    final String date;
    final Content content;

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
