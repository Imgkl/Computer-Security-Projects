.class public final enum Lcom/genie_connect/common/db/entityfactory/GenieEntity;
.super Ljava/lang/Enum;
.source "GenieEntity.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/genie_connect/common/db/entityfactory/GenieEntityValues;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
        ">;",
        "Ljava/io/Serializable;",
        "Lcom/genie_connect/common/db/entityfactory/GenieEntityValues;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum ACTIVITYSTREAMCOMMENT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum ACTIVITYSTREAMPOST:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum ADBANNER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum ADCAMPAIGN:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum AGENDAITEM:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum APP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum APPREF:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum APPREFCATEGORY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum ARTICLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum ARTICLE_GROUP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum DATAVERSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum EVENTDAY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum EXHIBITOR_TYPE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum FAV_AS_POST:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum FAV_DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum FAV_EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum FAV_POI:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum FAV_PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum FAV_SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum FAV_SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum FAV_SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum FAV_VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum GAME:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum HOTSPOTS:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum INAPPACTION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum INFOPAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum LOCATION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum MAP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum MAPFACILITY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum MAPZONE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum MEETING:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum MESSAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum NOTE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum PERMISSIONGROUP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum PLAYERGAME:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum POI:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum QRCODE_CUSTOM:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum SESSION_CATEGORY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum SURVEYS:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum TAG:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum TAGSV2:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum TRACK:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum TROPHY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum VISITORGROUP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final enum VISITORSURVEYS:Lcom/genie_connect/common/db/entityfactory/GenieEntity;


# instance fields
.field private final mEntityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final mModifiers:I

.field private final mStringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 92
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "AGENDAITEM"

    const/4 v2, 0x0

    const-string v3, "agendaitems"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->AGENDAITEM:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 94
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "FAV_AS_POST"

    const/4 v2, 0x1

    const-string v3, "favouriteActivityStreamPosts"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_AS_POST:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 96
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "FAV_DOWNLOADABLE"

    const/4 v2, 0x2

    const-string v3, "favouritedownloadables"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 98
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "FAV_EXHIBITOR"

    const/4 v2, 0x3

    const-string v3, "favouriteExhibitors"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 100
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "FAV_POI"

    const/4 v2, 0x4

    const-string v3, "favouritepoi"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_POI:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 102
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "FAV_PRODUCT"

    const/4 v2, 0x5

    const-string v3, "favouriteproducts"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 104
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "FAV_SPEAKER"

    const/4 v2, 0x6

    const-string v3, "favouritespeakers"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 106
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "FAV_VISITOR"

    const/4 v2, 0x7

    const-string v3, "favouritevisitors"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 108
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "NOTE"

    const/16 v2, 0x8

    const-string v3, "notes"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->NOTE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 110
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "FAV_SESSION"

    const/16 v2, 0x9

    const-string v3, "favouritesession"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 112
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "FAV_SUBSESSION"

    const/16 v2, 0xa

    const-string v3, "favouritesubsession"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 116
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "ADBANNER"

    const/16 v2, 0xb

    const-string v3, "adbanners"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ADBANNER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 118
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "ADCAMPAIGN"

    const/16 v2, 0xc

    const-string v3, "adcampaigns"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ADCAMPAIGN:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 122
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "ACTIVITYSTREAMPOST"

    const/16 v2, 0xd

    const-string v3, "activitystreamposts"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ACTIVITYSTREAMPOST:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 124
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "ACTIVITYSTREAMCOMMENT"

    const/16 v2, 0xe

    const-string v3, "activitystreamcomments"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ACTIVITYSTREAMCOMMENT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 128
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "MAP"

    const/16 v2, 0xf

    const-string v3, "maps"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MAP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 130
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "LOCATION"

    const/16 v2, 0x10

    const-string v3, "locations"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->LOCATION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 132
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "MAPFACILITY"

    const/16 v2, 0x11

    const-string v3, "mapfacilities"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MAPFACILITY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 134
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "MAPZONE"

    const/16 v2, 0x12

    const-string v3, "mapzones"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MAPZONE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 138
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "APP"

    const/16 v2, 0x13

    const-string v3, "apps"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->APP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 140
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "APPREF"

    const/16 v2, 0x14

    const-string v3, "apprefs"

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->APPREF:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 142
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "APPREFCATEGORY"

    const/16 v2, 0x15

    const-string v3, "appRefCategories"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->APPREFCATEGORY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 147
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "ARTICLE"

    const/16 v2, 0x16

    const-string v3, "articles"

    const/16 v4, 0x10

    const-class v5, Lcom/genie_connect/common/db/model/Article;

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ARTICLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 149
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "ARTICLE_GROUP"

    const/16 v2, 0x17

    const-string v3, "articlegroups"

    const/16 v4, 0x10

    const-class v5, Lcom/genie_connect/common/db/model/ArticleGroup;

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ARTICLE_GROUP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 153
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "PRODUCT"

    const/16 v2, 0x18

    const-string v3, "products"

    const/16 v4, 0xe

    const-class v5, Lcom/genie_connect/common/db/model/Product;

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 157
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "POI"

    const/16 v2, 0x19

    const-string v3, "poi"

    const/16 v4, 0xe

    const-class v5, Lcom/genie_connect/common/db/model/Poi;

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->POI:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 161
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "EXHIBITOR"

    const/16 v2, 0x1a

    const-string v3, "exhibitors"

    const/16 v4, 0xe

    const-class v5, Lcom/genie_connect/common/db/model/Exhibitor;

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 163
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "EXHIBITOR_TYPE"

    const/16 v2, 0x1b

    const-string v3, "exhibitortypes"

    const/16 v4, 0x8

    const-class v5, Lcom/genie_connect/common/db/model/ExhibitorType;

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR_TYPE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 167
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "EVENTDAY"

    const/16 v2, 0x1c

    const-string v3, "eventdays"

    const/16 v4, 0x8

    const-class v5, Lcom/genie_connect/common/db/model/EventDay;

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EVENTDAY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 169
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "MEETING"

    const/16 v2, 0x1d

    const-string v3, "meetings"

    const/4 v4, 0x0

    const-class v5, Lcom/genie_connect/common/db/model/Meeting;

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MEETING:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 171
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "SESSION"

    const/16 v2, 0x1e

    const-string v3, "sessions"

    const/16 v4, 0xf

    const-class v5, Lcom/genie_connect/common/db/model/Session;

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 173
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "SESSION_CATEGORY"

    const/16 v2, 0x1f

    const-string v3, "sessioncategories"

    const/16 v4, 0x8

    const-class v5, Lcom/genie_connect/common/db/model/SessionCategory;

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION_CATEGORY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 175
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "SUBSESSION"

    const/16 v2, 0x20

    const-string v3, "subsessions"

    const/16 v4, 0xe

    const-class v5, Lcom/genie_connect/common/db/model/Subsession;

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 177
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "TRACK"

    const/16 v2, 0x21

    const-string/jumbo v3, "tracks"

    const/16 v4, 0x8

    const-class v5, Lcom/genie_connect/common/db/model/Track;

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->TRACK:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 181
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "GAME"

    const/16 v2, 0x22

    const-string v3, "games"

    const/16 v4, 0x8

    const-class v5, Lcom/genie_connect/common/db/model/Game;

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->GAME:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 183
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "PLAYERGAME"

    const/16 v2, 0x23

    const-string v3, "playergames"

    const/16 v4, 0x8

    const-class v5, Lcom/genie_connect/common/db/model/PlayerGame;

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PLAYERGAME:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 185
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "TROPHY"

    const/16 v2, 0x24

    const-string/jumbo v3, "trophies"

    const/16 v4, 0x8

    const-class v5, Lcom/genie_connect/common/db/model/Trophy;

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->TROPHY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 189
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "DATAVERSION"

    const/16 v2, 0x25

    const-string v3, "dataversions"

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DATAVERSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 191
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "DOWNLOADABLE"

    const/16 v2, 0x26

    const-string v3, "downloadables"

    const/16 v4, 0xf

    const-class v5, Lcom/genie_connect/common/db/model/Downloadable;

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 193
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "INFOPAGE"

    const/16 v2, 0x27

    const-string v3, "infopages"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->INFOPAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 195
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "MESSAGE"

    const/16 v2, 0x28

    const-string v3, "messages"

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MESSAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 197
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "PERMISSIONGROUP"

    const/16 v2, 0x29

    const-string v3, "permissiongroups"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PERMISSIONGROUP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 199
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "SPEAKER"

    const/16 v2, 0x2a

    const-string v3, "speakers"

    const/16 v4, 0xe

    const-class v5, Lcom/genie_connect/common/db/model/Speaker;

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 201
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "TAG"

    const/16 v2, 0x2b

    const-string/jumbo v3, "tags"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->TAG:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 203
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "TAGSV2"

    const/16 v2, 0x2c

    const-string/jumbo v3, "tagsv2"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->TAGSV2:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 205
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "VISITOR"

    const/16 v2, 0x2d

    const-string/jumbo v3, "visitors"

    const/4 v4, 0x6

    const-class v5, Lcom/genie_connect/common/db/model/Visitor;

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 207
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "VISITORGROUP"

    const/16 v2, 0x2e

    const-string/jumbo v3, "visitorgroups"

    const/16 v4, 0x10

    const-class v5, Lcom/genie_connect/common/db/model/VisitorGroup;

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITORGROUP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 209
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "SURVEYS"

    const/16 v2, 0x2f

    const-string v3, "surveys"

    const/16 v4, 0x18

    const-class v5, Lcom/genie_connect/common/db/model/Survey;

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SURVEYS:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 211
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "VISITORSURVEYS"

    const/16 v2, 0x30

    const-string/jumbo v3, "visitorsurveys"

    const/16 v4, 0x18

    const-class v5, Lcom/genie_connect/common/db/model/Visitorsurvey;

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITORSURVEYS:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 217
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "INAPPACTION"

    const/16 v2, 0x31

    const-string v3, "inappactions"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->INAPPACTION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 219
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "HOTSPOTS"

    const/16 v2, 0x32

    const-string v3, "hotspots"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->HOTSPOTS:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 223
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v1, "QRCODE_CUSTOM"

    const/16 v2, 0x33

    const-string v3, "qrcodes_custom"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->QRCODE_CUSTOM:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 89
    const/16 v0, 0x34

    new-array v0, v0, [Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/4 v1, 0x0

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->AGENDAITEM:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_AS_POST:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_POI:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->NOTE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ADBANNER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ADCAMPAIGN:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ACTIVITYSTREAMPOST:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ACTIVITYSTREAMCOMMENT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MAP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->LOCATION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MAPFACILITY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MAPZONE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->APP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->APPREF:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->APPREFCATEGORY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ARTICLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ARTICLE_GROUP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->POI:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR_TYPE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EVENTDAY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MEETING:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION_CATEGORY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->TRACK:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->GAME:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PLAYERGAME:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->TROPHY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DATAVERSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->INFOPAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MESSAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PERMISSIONGROUP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->TAG:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->TAGSV2:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITORGROUP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SURVEYS:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITORSURVEYS:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->INAPPACTION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->HOTSPOTS:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->QRCODE_CUSTOM:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->$VALUES:[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 6
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "modifiers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 231
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    .line 232
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "modifiers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p5, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 235
    iput-object p3, p0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->mStringValue:Ljava/lang/String;

    .line 236
    iput p4, p0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->mModifiers:I

    .line 237
    iput-object p5, p0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->mEntityClass:Ljava/lang/Class;

    .line 238
    return-void
.end method

.method public static fromArray([Ljava/lang/Object;)[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 7
    .param p0, "objectArray"    # [Ljava/lang/Object;

    .prologue
    .line 266
    if-nez p0, :cond_1

    const/4 v5, 0x0

    .line 276
    :cond_0
    return-object v5

    .line 268
    :cond_1
    array-length v6, p0

    new-array v5, v6, [Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 270
    .local v5, "result":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    const/4 v2, 0x0

    .line 271
    .local v2, "index":I
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 272
    .local v4, "obj":Ljava/lang/Object;
    check-cast v4, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .end local v4    # "obj":Ljava/lang/Object;
    aput-object v4, v5, v2

    .line 273
    add-int/lit8 v2, v2, 0x1

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static fromArray([Ljava/lang/String;)[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 7
    .param p0, "stringArray"    # [Ljava/lang/String;

    .prologue
    .line 280
    if-nez p0, :cond_1

    const/4 v4, 0x0

    .line 288
    :cond_0
    return-object v4

    .line 281
    :cond_1
    array-length v6, p0

    new-array v4, v6, [Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 283
    .local v4, "result":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    const/4 v2, 0x0

    .line 284
    .local v2, "index":I
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v5, v0, v1

    .line 285
    .local v5, "str":Ljava/lang/String;
    invoke-static {v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromString(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v6

    aput-object v6, v4, v2

    .line 286
    add-int/lit8 v2, v2, 0x1

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static fromClass(Ljava/lang/Class;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_1

    .line 307
    invoke-static {}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->values()[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v0

    .local v0, "arr$":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 308
    .local v1, "b":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 315
    .end local v0    # "arr$":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .end local v1    # "b":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_1
    return-object v1

    .line 307
    .restart local v0    # "arr$":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .restart local v1    # "b":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    .end local v0    # "arr$":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .end local v1    # "b":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ ENTITY: No GenieEntity for class \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/genie_connect/common/utils/CommonLog;->warn(Ljava/lang/String;)V

    .line 315
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static fromString(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 6
    .param p0, "entityName"    # Ljava/lang/String;

    .prologue
    .line 293
    if-eqz p0, :cond_1

    .line 294
    invoke-static {}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->values()[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v0

    .local v0, "arr$":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 295
    .local v1, "b":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 302
    .end local v0    # "arr$":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .end local v1    # "b":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_1
    return-object v1

    .line 294
    .restart local v0    # "arr$":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .restart local v1    # "b":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    .end local v0    # "arr$":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .end local v1    # "b":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ ENTITY: No GenieEntity called \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/genie_connect/common/utils/CommonLog;->warn(Ljava/lang/String;)V

    .line 302
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    const-class v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->$VALUES:[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v0}, [Lcom/genie_connect/common/db/entityfactory/GenieEntity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method


# virtual methods
.method public getEntityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->mEntityClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->mStringValue:Ljava/lang/String;

    return-object v0
.end method

.method public isFavouritable()Z
    .locals 2

    .prologue
    .line 244
    iget v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->mModifiers:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/genie_connect/common/utils/BitmaskUtils;->isFlagSet(II)Z

    move-result v0

    return v0
.end method

.method public isLiveSyncable()Z
    .locals 2

    .prologue
    .line 260
    iget v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->mModifiers:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/genie_connect/common/utils/BitmaskUtils;->isFlagSet(II)Z

    move-result v0

    return v0
.end method

.method public isNotable()Z
    .locals 2

    .prologue
    .line 248
    iget v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->mModifiers:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/genie_connect/common/utils/BitmaskUtils;->isFlagSet(II)Z

    move-result v0

    return v0
.end method

.method public isPermissionsEnabled()Z
    .locals 2

    .prologue
    .line 252
    iget v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->mModifiers:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/genie_connect/common/utils/BitmaskUtils;->isFlagSet(II)Z

    move-result v0

    return v0
.end method

.method public isVersioned()Z
    .locals 2

    .prologue
    .line 256
    iget v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->mModifiers:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/genie_connect/common/utils/BitmaskUtils;->isFlagSet(II)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->mStringValue:Ljava/lang/String;

    return-object v0
.end method
