.class public final enum Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
.super Ljava/lang/Enum;
.source "Noun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/db/config/misc/Noun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NounKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/android/db/config/misc/Noun$NounKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final enum CHAIRS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final enum COCHAIRS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final enum DOWNLOADABLES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final enum EXHIBITORS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final enum FLOORPLANS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final enum GAMES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final enum KEYSPEAKERS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final enum MAPFACILITIES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final enum MAPZONES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final enum MULTIEVENT:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final enum NONE:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final enum NOTES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final enum PLAYERS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final enum POIS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final enum PRODUCTS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final enum SESSIONS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final enum SPEAKERS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final enum STANDS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final enum STATICMAPS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final enum SUBSESSIONS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final enum TRACKS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final enum TROPHIES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final enum VENUE:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final enum VISITORS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;


# instance fields
.field private final configKeyOverride:Ljava/lang/String;

.field private final stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 43
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    const-string v1, "NONE"

    const-string v2, "none"

    invoke-direct {v0, v1, v5, v2}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->NONE:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 45
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    const-string v1, "CHAIRS"

    const-string v2, "chairs"

    invoke-direct {v0, v1, v6, v2}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->CHAIRS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 46
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    const-string v1, "COCHAIRS"

    const-string v2, "cochairs"

    invoke-direct {v0, v1, v7, v2}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->COCHAIRS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 47
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    const-string v1, "DOWNLOADABLES"

    const-string v2, "downloadables"

    invoke-direct {v0, v1, v8, v2}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->DOWNLOADABLES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 48
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    const-string v1, "EXHIBITORS"

    const-string v2, "exhibitors"

    invoke-direct {v0, v1, v9, v2}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->EXHIBITORS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 49
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    const-string v1, "FLOORPLANS"

    const/4 v2, 0x5

    const-string v3, "floorplans"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->FLOORPLANS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 50
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    const-string v1, "GAMES"

    const/4 v2, 0x6

    const-string v3, "games"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->GAMES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 51
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    const-string v1, "KEYSPEAKERS"

    const/4 v2, 0x7

    const-string v3, "keyspeakers"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->KEYSPEAKERS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 52
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    const-string v1, "MAPFACILITIES"

    const/16 v2, 0x8

    const-string v3, "mapfacilities"

    const-string v4, "facilities"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->MAPFACILITIES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 53
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    const-string v1, "MAPZONES"

    const/16 v2, 0x9

    const-string v3, "mapzones"

    const-string/jumbo v4, "zones"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->MAPZONES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 54
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    const-string v1, "MULTIEVENT"

    const/16 v2, 0xa

    const-string v3, "multievent"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->MULTIEVENT:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 55
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    const-string v1, "NOTES"

    const/16 v2, 0xb

    const-string v3, "notes"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->NOTES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 56
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    const-string v1, "PLAYERS"

    const/16 v2, 0xc

    const-string v3, "players"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->PLAYERS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 57
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    const-string v1, "POIS"

    const/16 v2, 0xd

    const-string v3, "poi"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->POIS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 58
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    const-string v1, "PRODUCTS"

    const/16 v2, 0xe

    const-string v3, "products"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->PRODUCTS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 59
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    const-string v1, "SESSIONS"

    const/16 v2, 0xf

    const-string v3, "sessions"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SESSIONS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 60
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    const-string v1, "SPEAKERS"

    const/16 v2, 0x10

    const-string v3, "speakers"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SPEAKERS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 61
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    const-string v1, "STANDS"

    const/16 v2, 0x11

    const-string v3, "stands"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->STANDS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 62
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    const-string v1, "STATICMAPS"

    const/16 v2, 0x12

    const-string v3, "staticmaps"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->STATICMAPS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 63
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    const-string v1, "SUBSESSIONS"

    const/16 v2, 0x13

    const-string v3, "subsessions"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SUBSESSIONS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 64
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    const-string v1, "TRACKS"

    const/16 v2, 0x14

    const-string/jumbo v3, "tracks"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->TRACKS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 65
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    const-string v1, "TROPHIES"

    const/16 v2, 0x15

    const-string/jumbo v3, "trophies"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->TROPHIES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 66
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    const-string v1, "VENUE"

    const/16 v2, 0x16

    const-string/jumbo v3, "venue"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->VENUE:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 67
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    const-string v1, "VISITORS"

    const/16 v2, 0x17

    const-string/jumbo v3, "visitors"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->VISITORS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 42
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v1, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->NONE:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->CHAIRS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    aput-object v1, v0, v6

    sget-object v1, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->COCHAIRS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    aput-object v1, v0, v7

    sget-object v1, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->DOWNLOADABLES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    aput-object v1, v0, v8

    sget-object v1, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->EXHIBITORS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->FLOORPLANS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->GAMES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->KEYSPEAKERS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->MAPFACILITIES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->MAPZONES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->MULTIEVENT:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->NOTES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->PLAYERS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->POIS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->PRODUCTS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SESSIONS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SPEAKERS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->STANDS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->STATICMAPS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SUBSESSIONS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->TRACKS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->TROPHIES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->VENUE:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->VISITORS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->$VALUES:[Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput-object p3, p0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->stringValue:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->configKeyOverride:Ljava/lang/String;

    .line 80
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "c"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput-object p3, p0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->stringValue:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->configKeyOverride:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->values()[Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    move-result-object v0

    .local v0, "arr$":[Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 93
    .local v3, "noun":Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    iget-object v4, v3, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->stringValue:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    .end local v3    # "noun":Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    :goto_1
    return-object v3

    .line 92
    .restart local v3    # "noun":Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v3    # "noun":Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    :cond_1
    sget-object v3, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->NONE:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->$VALUES:[Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    invoke-virtual {v0}, [Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    return-object v0
.end method


# virtual methods
.method public getConfigKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->configKeyOverride:Ljava/lang/String;

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->configKeyOverride:Ljava/lang/String;

    .line 87
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->stringValue:Ljava/lang/String;

    return-object v0
.end method
