.class public final enum Lcom/genie_connect/android/db/config/GenieWidget;
.super Ljava/lang/Enum;
.source "GenieWidget.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/android/db/config/GenieWidget;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum ACTIVITYSTREAM:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum APP:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum APPLAUNCH:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum DASHBOARD:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum EXHIBITORS:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum FIND_PEOPLE:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum FLICKR:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum GAMIFICATION:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum INFO:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum MAPPING:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum MULTIEVENTSELECTOR:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum MY_AGENDA:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum MY_DOWNLOADS:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum MY_EVENT:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum MY_EXHIBITORS:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum MY_FAVOURITE_SESSIONS:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum MY_INBOX:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum MY_NOTES:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum MY_POI:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum MY_PRODUCTS:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum MY_PROFILE:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum MY_QRCODES:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum MY_SETTINGS:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum MY_SPEAKERS:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum MY_VISITORS:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum NEWS:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum NEWSSOCIAL:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum NONE:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum POI:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum PRODUCTS:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum QRREADER:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum RSSFEED:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum SCHEDULE:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum SPEAKERS:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum SURVEYS:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum TWITTER:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final enum YOUTUBE:Lcom/genie_connect/android/db/config/GenieWidget;


# instance fields
.field private final mOnlineOnly:Z

.field private final mStringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "NONE"

    const-string v2, "none"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->NONE:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 38
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "APP"

    const-string v2, "app"

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->APP:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 40
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "APPLAUNCH"

    const-string v2, "applaunch"

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->APPLAUNCH:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 41
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "DASHBOARD"

    const-string v2, "dashboard"

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->DASHBOARD:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 42
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "EXHIBITORS"

    const-string v2, "exhibitors"

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->EXHIBITORS:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 43
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "FIND_PEOPLE"

    const/4 v2, 0x5

    const-string v3, "findpeople"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->FIND_PEOPLE:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 44
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "FLICKR"

    const/4 v2, 0x6

    const-string v3, "flickr"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->FLICKR:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 45
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "GAMIFICATION"

    const/4 v2, 0x7

    const-string v3, "gamification"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->GAMIFICATION:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 46
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "INFO"

    const/16 v2, 0x8

    const-string v3, "info"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->INFO:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 47
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "MAPPING"

    const/16 v2, 0x9

    const-string v3, "mapping"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MAPPING:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 48
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "MULTIEVENTSELECTOR"

    const/16 v2, 0xa

    const-string v3, "multieventselector"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MULTIEVENTSELECTOR:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 49
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "MY_AGENDA"

    const/16 v2, 0xb

    const-string v3, "myagenda"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_AGENDA:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 50
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "MY_FAVOURITE_SESSIONS"

    const/16 v2, 0xc

    const-string v3, "myfavouritesessions"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_FAVOURITE_SESSIONS:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 51
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "MY_DOWNLOADS"

    const/16 v2, 0xd

    const-string v3, "mydownloads"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_DOWNLOADS:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 52
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "MY_EVENT"

    const/16 v2, 0xe

    const-string v3, "myevent"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_EVENT:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 53
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "MY_EXHIBITORS"

    const/16 v2, 0xf

    const-string v3, "myfavouriteexhibitors"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_EXHIBITORS:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 54
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "MY_INBOX"

    const/16 v2, 0x10

    const-string v3, "myinbox"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_INBOX:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 55
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "MY_NOTES"

    const/16 v2, 0x11

    const-string v3, "mynotes"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_NOTES:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 56
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "MY_POI"

    const/16 v2, 0x12

    const-string v3, "myfavouritepoi"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_POI:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 57
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "MY_PRODUCTS"

    const/16 v2, 0x13

    const-string v3, "myfavouriteproducts"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_PRODUCTS:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 58
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "MY_PROFILE"

    const/16 v2, 0x14

    const-string v3, "myprofile"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_PROFILE:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 59
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "MY_QRCODES"

    const/16 v2, 0x15

    const-string v3, "myqrcodes"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_QRCODES:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 60
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "MY_SETTINGS"

    const/16 v2, 0x16

    const-string v3, "mysettings"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_SETTINGS:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 61
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "MY_SPEAKERS"

    const/16 v2, 0x17

    const-string v3, "myfavouritespeakers"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_SPEAKERS:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 62
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "MY_VISITORS"

    const/16 v2, 0x18

    const-string v3, "myfavouritevisitors"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_VISITORS:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 63
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "NEWS"

    const/16 v2, 0x19

    const-string v3, "news"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->NEWS:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 64
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "NEWSSOCIAL"

    const/16 v2, 0x1a

    const-string v3, "newssocial"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->NEWSSOCIAL:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 65
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "POI"

    const/16 v2, 0x1b

    const-string v3, "poi"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->POI:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 66
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "PRODUCTS"

    const/16 v2, 0x1c

    const-string v3, "products"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->PRODUCTS:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 67
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "QRREADER"

    const/16 v2, 0x1d

    const-string v3, "qrreader"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->QRREADER:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 68
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "RSSFEED"

    const/16 v2, 0x1e

    const-string v3, "rssfeed"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->RSSFEED:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 69
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "SCHEDULE"

    const/16 v2, 0x1f

    const-string v3, "schedule"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->SCHEDULE:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 70
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "SPEAKERS"

    const/16 v2, 0x20

    const-string v3, "speakers"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->SPEAKERS:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 71
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "TWITTER"

    const/16 v2, 0x21

    const-string/jumbo v3, "twitter"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->TWITTER:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 72
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "YOUTUBE"

    const/16 v2, 0x22

    const-string/jumbo v3, "youtube"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->YOUTUBE:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 73
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "ACTIVITYSTREAM"

    const/16 v2, 0x23

    const-string v3, "activitystream"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->ACTIVITYSTREAM:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 74
    new-instance v0, Lcom/genie_connect/android/db/config/GenieWidget;

    const-string v1, "SURVEYS"

    const/16 v2, 0x24

    const-string v3, "surveys"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/GenieWidget;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->SURVEYS:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 36
    const/16 v0, 0x25

    new-array v0, v0, [Lcom/genie_connect/android/db/config/GenieWidget;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->NONE:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v1, v0, v4

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->APP:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v1, v0, v5

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->APPLAUNCH:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v1, v0, v6

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->DASHBOARD:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v1, v0, v7

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->EXHIBITORS:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->FIND_PEOPLE:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->FLICKR:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->GAMIFICATION:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->INFO:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MAPPING:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MULTIEVENTSELECTOR:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_AGENDA:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_FAVOURITE_SESSIONS:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_DOWNLOADS:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_EVENT:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_EXHIBITORS:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_INBOX:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_NOTES:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_POI:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_PRODUCTS:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_PROFILE:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_QRCODES:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_SETTINGS:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_SPEAKERS:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_VISITORS:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->NEWS:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->NEWSSOCIAL:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->POI:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->PRODUCTS:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->QRREADER:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->RSSFEED:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->SCHEDULE:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->SPEAKERS:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->TWITTER:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->YOUTUBE:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->ACTIVITYSTREAM:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->SURVEYS:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->$VALUES:[Lcom/genie_connect/android/db/config/GenieWidget;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "onlineOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput-object p3, p0, Lcom/genie_connect/android/db/config/GenieWidget;->mStringValue:Ljava/lang/String;

    .line 81
    iput-boolean p4, p0, Lcom/genie_connect/android/db/config/GenieWidget;->mOnlineOnly:Z

    .line 82
    return-void
.end method

.method public static fromArray([Ljava/lang/Object;)[Lcom/genie_connect/android/db/config/GenieWidget;
    .locals 7
    .param p0, "objectArray"    # [Ljava/lang/Object;

    .prologue
    .line 94
    if-nez p0, :cond_1

    const/4 v5, 0x0

    .line 104
    :cond_0
    return-object v5

    .line 96
    :cond_1
    array-length v6, p0

    new-array v5, v6, [Lcom/genie_connect/android/db/config/GenieWidget;

    .line 98
    .local v5, "result":[Lcom/genie_connect/android/db/config/GenieWidget;
    const/4 v2, 0x0

    .line 99
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

    .line 100
    .local v4, "obj":Ljava/lang/Object;
    check-cast v4, Lcom/genie_connect/android/db/config/GenieWidget;

    .end local v4    # "obj":Ljava/lang/Object;
    aput-object v4, v5, v2

    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/genie_connect/android/db/config/GenieWidget;
    .locals 6
    .param p0, "entityName"    # Ljava/lang/String;

    .prologue
    .line 109
    if-eqz p0, :cond_1

    .line 110
    invoke-static {}, Lcom/genie_connect/android/db/config/GenieWidget;->values()[Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v0

    .local v0, "arr$":[Lcom/genie_connect/android/db/config/GenieWidget;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 111
    .local v1, "b":Lcom/genie_connect/android/db/config/GenieWidget;
    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    .end local v0    # "arr$":[Lcom/genie_connect/android/db/config/GenieWidget;
    .end local v1    # "b":Lcom/genie_connect/android/db/config/GenieWidget;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_1
    return-object v1

    .line 110
    .restart local v0    # "arr$":[Lcom/genie_connect/android/db/config/GenieWidget;
    .restart local v1    # "b":Lcom/genie_connect/android/db/config/GenieWidget;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "arr$":[Lcom/genie_connect/android/db/config/GenieWidget;
    .end local v1    # "b":Lcom/genie_connect/android/db/config/GenieWidget;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ ENTITY: No GenieWidget called \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 118
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/android/db/config/GenieWidget;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/GenieWidget;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/android/db/config/GenieWidget;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->$VALUES:[Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v0}, [Lcom/genie_connect/android/db/config/GenieWidget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/android/db/config/GenieWidget;

    return-object v0
.end method


# virtual methods
.method public isOnlineOnly()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/GenieWidget;->mOnlineOnly:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieWidget;->mStringValue:Ljava/lang/String;

    return-object v0
.end method
