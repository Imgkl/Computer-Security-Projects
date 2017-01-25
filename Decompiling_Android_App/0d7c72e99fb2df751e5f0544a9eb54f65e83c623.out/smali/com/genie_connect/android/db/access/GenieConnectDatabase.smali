.class public final Lcom/genie_connect/android/db/access/GenieConnectDatabase;
.super Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;
.source "GenieConnectDatabase.java"

# interfaces
.implements Lcom/genie_connect/android/db/QuerySettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/db/access/GenieConnectDatabase$1;
    }
.end annotation


# static fields
.field private static final DATABASE_FORCE_UPGRADE_VERSION:I = 0x36

.field private static final DATABASE_VERSION:I = 0x3f


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDbCaches:Lcom/genie_connect/android/db/access/DatabaseCache;

.field private final mDbCategoriesStore:Lcom/genie_connect/android/db/access/DbCategories;

.field private final mDbMiscStore:Lcom/genie_connect/android/db/access/DbMisc;

.field private final mDbScheduleStore:Lcom/genie_connect/android/db/access/DbSchedule;

.field private final mDbSponsorCampaignStore:Lcom/genie_connect/android/db/access/DbSponsorCampaign;

.field private final mEntityDbClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            "Lcom/genie_connect/android/db/access/BaseDb;",
            ">;"
        }
    .end annotation
.end field

.field private final mUdm:Lcom/genie_connect/android/db/access/Udm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    const-string v0, "eventgenie.db"

    const-string v1, "eventgenie_s.db"

    invoke-direct {p0, p1, v0, v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "masterName"    # Ljava/lang/String;
    .param p3, "slaveName"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    const/16 v5, 0x3f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 119
    const/16 v0, 0x36

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->setForcedUpgradeVersion(I)V

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    .line 123
    new-instance v0, Lcom/genie_connect/android/db/access/Udm;

    invoke-direct {v0, p1, p0}, Lcom/genie_connect/android/db/access/Udm;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mUdm:Lcom/genie_connect/android/db/access/Udm;

    .line 124
    new-instance v0, Lcom/genie_connect/android/db/access/DatabaseCache;

    invoke-direct {v0, p0}, Lcom/genie_connect/android/db/access/DatabaseCache;-><init>(Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mDbCaches:Lcom/genie_connect/android/db/access/DatabaseCache;

    .line 126
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->AGENDAITEM:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v2, Lcom/genie_connect/android/db/access/DbAgendaItems;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/genie_connect/android/db/access/DbAgendaItems;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->APPREF:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v2, Lcom/genie_connect/android/db/access/DbAppRefs;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/genie_connect/android/db/access/DbAppRefs;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ARTICLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v2, Lcom/genie_connect/android/db/access/DbArticles;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/genie_connect/android/db/access/DbArticles;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DATAVERSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v2, Lcom/genie_connect/android/db/access/DbDataversions;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/genie_connect/android/db/access/DbDataversions;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v2, Lcom/genie_connect/android/db/access/DbDownloadables;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/genie_connect/android/db/access/DbDownloadables;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EVENTDAY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v2, Lcom/genie_connect/android/db/access/DbEventDays;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/genie_connect/android/db/access/DbEventDays;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v2, Lcom/genie_connect/android/db/access/DbExhibitors;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/genie_connect/android/db/access/DbExhibitors;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->GAME:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v2, Lcom/genie_connect/android/db/access/DbGames;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/genie_connect/android/db/access/DbGames;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->INFOPAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v2, Lcom/genie_connect/android/db/access/DbInfopages;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/genie_connect/android/db/access/DbInfopages;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->LOCATION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v2, Lcom/genie_connect/android/db/access/DbLocations;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/genie_connect/android/db/access/DbLocations;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MAP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v2, Lcom/genie_connect/android/db/access/DbMaps;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/genie_connect/android/db/access/DbMaps;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MAPFACILITY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v2, Lcom/genie_connect/android/db/access/DbMapFacilities;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/genie_connect/android/db/access/DbMapFacilities;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MAPZONE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v2, Lcom/genie_connect/android/db/access/DbMapZones;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/genie_connect/android/db/access/DbMapZones;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->NOTE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v2, Lcom/genie_connect/android/db/access/DbNotes;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/genie_connect/android/db/access/DbNotes;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PERMISSIONGROUP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v2, Lcom/genie_connect/android/db/access/DbPermissionGroups;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/genie_connect/android/db/access/DbPermissionGroups;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->POI:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v2, Lcom/genie_connect/android/db/access/DbPoi;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/genie_connect/android/db/access/DbPoi;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v2, Lcom/genie_connect/android/db/access/DbProducts;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/genie_connect/android/db/access/DbProducts;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->QRCODE_CUSTOM:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v2, Lcom/genie_connect/android/db/access/DbQrCodes;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/genie_connect/android/db/access/DbQrCodes;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v2, Lcom/genie_connect/android/db/access/DbSessions;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/genie_connect/android/db/access/DbSessions;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v2, Lcom/genie_connect/android/db/access/DbSpeakers;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/genie_connect/android/db/access/DbSpeakers;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v2, Lcom/genie_connect/android/db/access/DbSubsessions;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/genie_connect/android/db/access/DbSubsessions;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->TROPHY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v2, Lcom/genie_connect/android/db/access/DbTrophies;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/genie_connect/android/db/access/DbTrophies;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v2, Lcom/genie_connect/android/db/access/DbVisitors;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/genie_connect/android/db/access/DbVisitors;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->TAGSV2:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v2, Lcom/genie_connect/android/db/access/DbTagsV2;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/genie_connect/android/db/access/DbTagsV2;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->INAPPACTION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v2, Lcom/genie_connect/android/db/access/DbInAppActions;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/genie_connect/android/db/access/DbInAppActions;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->HOTSPOTS:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v2, Lcom/genie_connect/android/db/access/DbHotspots;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/genie_connect/android/db/access/DbHotspots;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITORGROUP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v2, Lcom/genie_connect/android/db/access/DbVisitorGroups;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/genie_connect/android/db/access/DbVisitorGroups;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ACTIVITYSTREAMPOST:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v2, Lcom/genie_connect/android/db/access/DbActivitystreampost;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/genie_connect/android/db/access/DbActivitystreampost;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, Lcom/genie_connect/android/db/access/DbCategories;

    iget-object v1, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/genie_connect/android/db/access/DbCategories;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mDbCategoriesStore:Lcom/genie_connect/android/db/access/DbCategories;

    .line 157
    new-instance v0, Lcom/genie_connect/android/db/access/DbSponsorCampaign;

    iget-object v1, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/genie_connect/android/db/access/DbSponsorCampaign;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mDbSponsorCampaignStore:Lcom/genie_connect/android/db/access/DbSponsorCampaign;

    .line 158
    new-instance v0, Lcom/genie_connect/android/db/access/DbSchedule;

    iget-object v1, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/genie_connect/android/db/access/DbSchedule;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mDbScheduleStore:Lcom/genie_connect/android/db/access/DbSchedule;

    .line 159
    new-instance v0, Lcom/genie_connect/android/db/access/DbMisc;

    iget-object v1, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/genie_connect/android/db/access/DbMisc;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mDbMiscStore:Lcom/genie_connect/android/db/access/DbMisc;

    .line 160
    return-void
.end method

.method private createTempSlaveDb()V
    .locals 4

    .prologue
    .line 578
    :try_start_0
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x1

    invoke-super {p0, v2}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->getDatabasePath(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getTempSlaveDbPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->copy(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    :goto_0
    return-void

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getTempSlaveDbPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    const-string v0, "eventgenie_tmp"

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getDatabasePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public copy(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dst"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 604
    .local v1, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 607
    .local v3, "out":Ljava/io/OutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 609
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    if-lez v2, :cond_0

    .line 610
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 612
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 613
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 614
    return-void
.end method

.method public deleteAllEntities()J
    .locals 10

    .prologue
    .line 163
    const-wide/16 v2, 0x0

    .line 165
    .local v2, "count":J
    invoke-static {}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->values()[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v0

    .local v0, "arr$":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v0, v5

    .line 166
    .local v1, "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    new-instance v7, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct {v7}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;-><init>()V

    invoke-virtual {v7, v1}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v4

    .line 167
    .local v4, "entityInstance":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    if-eqz v4, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getDatabaseWrapper()Lcom/genie_connect/android/platform/DatabaseWrapper;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteDeleteAll(Lcom/genie_connect/common/platform/db/IDatabase;)J

    move-result-wide v8

    add-long/2addr v2, v8

    .line 165
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 172
    .end local v1    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .end local v4    # "entityInstance":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :cond_1
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v7

    if-nez v7, :cond_2

    .line 173
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    const-string v8, "VACUUM"

    invoke-virtual {v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 175
    :cond_2
    return-wide v2
.end method

.method public deleteEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)I
    .locals 6
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "id"    # J

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteTempSlaveDatabase()V
    .locals 2

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->isTempSlaveDatabaseExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getTempSlaveDbPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 589
    :cond_0
    return-void
.end method

.method public dumpEntityTableToLog(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V
    .locals 9
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->getDebugLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 201
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 202
    invoke-static {v8}, Lcom/genie_connect/android/db/DbHelper;->logFullCursor(Landroid/database/Cursor;)Ljava/lang/String;

    .line 203
    invoke-static {v8}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 205
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->close()V

    .line 210
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 211
    return-void
.end method

.method public findFreeIdForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)J
    .locals 2
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/genie_connect/android/db/access/DbMisc;->findFreeIdForEntity(Landroid/database/sqlite/SQLiteDatabase;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getActivityStreamPosts()Lcom/genie_connect/android/db/access/DbActivitystreampost;
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ACTIVITYSTREAMPOST:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbActivitystreampost;

    return-object v0
.end method

.method public getAgendaItems()Lcom/genie_connect/android/db/access/DbAgendaItems;
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->AGENDAITEM:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbAgendaItems;

    return-object v0
.end method

.method public getApprefs()Lcom/genie_connect/android/db/access/DbAppRefs;
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->APPREF:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbAppRefs;

    return-object v0
.end method

.method public getArticles()Lcom/genie_connect/android/db/access/DbArticles;
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ARTICLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbArticles;

    return-object v0
.end method

.method public getCategories()Lcom/genie_connect/android/db/access/DbCategories;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mDbCategoriesStore:Lcom/genie_connect/android/db/access/DbCategories;

    return-object v0
.end method

.method public getDatabaseCache()Lcom/genie_connect/android/db/access/DatabaseCache;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mDbCaches:Lcom/genie_connect/android/db/access/DatabaseCache;

    return-object v0
.end method

.method public getDataversions()Lcom/genie_connect/android/db/access/DbDataversions;
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DATAVERSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbDataversions;

    return-object v0
.end method

.method public getDownloadablesDb()Lcom/genie_connect/android/db/access/DbDownloadables;
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbDownloadables;

    return-object v0
.end method

.method public getEntityCount(Ljava/lang/String;)J
    .locals 4
    .param p1, "entityName"    # Ljava/lang/String;

    .prologue
    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT COUNT(*) FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 282
    .local v1, "statement":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    return-wide v2
.end method

.method public getEntityDbClasses()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            "Lcom/genie_connect/android/db/access/BaseDb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    return-object v0
.end method

.method public getEntityList(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/os/Bundle;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 19
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 293
    const-string v1, "query_setting_isfavourite"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 294
    .local v4, "isFav":Z
    const-string v1, "query_setting_isfeatured"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 297
    .local v3, "isFeatured":Z
    sget-object v1, Lcom/genie_connect/android/db/access/GenieConnectDatabase$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    invoke-virtual/range {p1 .. p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v6

    aget v1, v1, v6

    packed-switch v1, :pswitch_data_0

    .line 327
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getEntityList - No query for entity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    :pswitch_0
    const-string v1, "query_setting_loc_display_mode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v18

    check-cast v18, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    .line 302
    .local v18, "locationMode":Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;
    const-string v1, "query_setting_hide_if_no_location"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 303
    .local v5, "hideIfNoLocation":Z
    const-string v1, "query_setting_sort_by_sequence"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 305
    .local v16, "sortBySequence":Z
    const-string v1, "query_setting_filter_text"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "textFilter":Ljava/lang/String;
    sget-object v1, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;->ExpandedLocation:Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    move-object/from16 v0, v18

    if-ne v0, v1, :cond_0

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getExhibitorsDb()Lcom/genie_connect/android/db/access/DbExhibitors;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/genie_connect/android/db/access/DbExhibitors;->getExhibitors(Ljava/lang/String;ZZZI)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 324
    .end local v2    # "textFilter":Ljava/lang/String;
    .end local v5    # "hideIfNoLocation":Z
    .end local v16    # "sortBySequence":Z
    .end local v18    # "locationMode":Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;
    :goto_0
    return-object v1

    .line 310
    .restart local v2    # "textFilter":Ljava/lang/String;
    .restart local v5    # "hideIfNoLocation":Z
    .restart local v16    # "sortBySequence":Z
    .restart local v18    # "locationMode":Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getExhibitorsDb()Lcom/genie_connect/android/db/access/DbExhibitors;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    move-object v11, v2

    move v14, v3

    move v15, v4

    invoke-virtual/range {v6 .. v17}, Lcom/genie_connect/android/db/access/DbExhibitors;->getExhibitorsWithSingleLineLocations(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZZI)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    goto :goto_0

    .line 313
    .end local v2    # "textFilter":Ljava/lang/String;
    .end local v5    # "hideIfNoLocation":Z
    .end local v16    # "sortBySequence":Z
    .end local v18    # "locationMode":Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getProductsDb()Lcom/genie_connect/android/db/access/DbProducts;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v4}, Lcom/genie_connect/android/db/access/DbProducts;->getProducts(Ljava/lang/Long;Ljava/lang/Long;Z)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    goto :goto_0

    .line 315
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSpeakersDb()Lcom/genie_connect/android/db/access/DbSpeakers;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v4}, Lcom/genie_connect/android/db/access/DbSpeakers;->getSpeakers(Ljava/lang/Long;Z)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    goto :goto_0

    .line 317
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getDownloadablesDb()Lcom/genie_connect/android/db/access/DbDownloadables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/DbDownloadables;->getDownloadables()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    goto :goto_0

    .line 319
    :pswitch_4
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v1

    const-class v6, Lcom/genie_connect/android/repository/FavouriteSessionRepository;

    invoke-virtual {v1, v6}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/repository/FavouriteSessionRepository;

    invoke-virtual {v1}, Lcom/genie_connect/android/repository/FavouriteSessionRepository;->getMyBookmarks()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    goto :goto_0

    .line 321
    :pswitch_5
    if-eqz v4, :cond_1

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getPoisDb()Lcom/genie_connect/android/db/access/DbPoi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/DbPoi;->getFavouritePois()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    goto :goto_0

    .line 324
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getPoisDb()Lcom/genie_connect/android/db/access/DbPoi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/DbPoi;->getAll()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    goto :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getEntityRawRows(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 11
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    const/4 v2, 0x0

    .line 340
    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "table":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 343
    .local v9, "colCursor":Landroid/database/Cursor;
    new-instance v10, Ljava/util/HashSet;

    invoke-interface {v9}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 344
    .local v10, "columns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v9}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 347
    const-string v0, "name"

    invoke-interface {v10, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    const-string v7, "name"

    .line 355
    .local v7, "sortBy":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 356
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 357
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    invoke-direct {v0, v8}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;-><init>(Landroid/database/Cursor;)V

    return-object v0

    .line 349
    .end local v7    # "sortBy":Ljava/lang/String;
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_0
    const-string v0, "lastNames"

    invoke-interface {v10, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    const-string v7, "lastNames"

    .restart local v7    # "sortBy":Ljava/lang/String;
    goto :goto_0

    .line 352
    .end local v7    # "sortBy":Ljava/lang/String;
    :cond_1
    const-string v7, "id"

    .restart local v7    # "sortBy":Ljava/lang/String;
    goto :goto_0
.end method

.method public getEntityRow(Ljava/lang/String;J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 2
    .param p1, "mEntity"    # Ljava/lang/String;
    .param p2, "mEntityId"    # J

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/genie_connect/android/db/access/DbMisc;->getEntityRow(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public getEventDaysDb()Lcom/genie_connect/android/db/access/DbEventDays;
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EVENTDAY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbEventDays;

    return-object v0
.end method

.method public getExhibitorsDb()Lcom/genie_connect/android/db/access/DbExhibitors;
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbExhibitors;

    return-object v0
.end method

.method public getGames()Lcom/genie_connect/android/db/access/DbGames;
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->GAME:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbGames;

    return-object v0
.end method

.method public getHotspots()Lcom/genie_connect/android/db/access/DbHotspots;
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->HOTSPOTS:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbHotspots;

    return-object v0
.end method

.method public getInAppActions()Lcom/genie_connect/android/db/access/DbInAppActions;
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->INAPPACTION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbInAppActions;

    return-object v0
.end method

.method public getInfopages()Lcom/genie_connect/android/db/access/DbInfopages;
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->INFOPAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbInfopages;

    return-object v0
.end method

.method public getLastModifiedDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 406
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 408
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    new-array v2, v12, [Ljava/lang/String;

    const-string v1, "datetime(max(modifiedDate), \'+1 seconds\') lastUpdate"

    aput-object v1, v2, v11

    .line 409
    .local v2, "sqlSelect":[Ljava/lang/String;
    move-object v10, p1

    .line 411
    .local v10, "sqlTables":Ljava/lang/String;
    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 414
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 418
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v12, :cond_0

    .line 419
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 424
    .local v9, "lastUpdate":Ljava/lang/String;
    :goto_0
    invoke-static {v8}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 425
    return-object v9

    .line 421
    .end local v9    # "lastUpdate":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    .restart local v9    # "lastUpdate":Ljava/lang/String;
    goto :goto_0
.end method

.method public getLocations()Lcom/genie_connect/android/db/access/DbLocations;
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->LOCATION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbLocations;

    return-object v0
.end method

.method public getMapFacilities()Lcom/genie_connect/android/db/access/DbMapFacilities;
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MAPFACILITY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbMapFacilities;

    return-object v0
.end method

.method public getMapZones()Lcom/genie_connect/android/db/access/DbMapZones;
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MAPZONE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbMapZones;

    return-object v0
.end method

.method public getMaps()Lcom/genie_connect/android/db/access/DbMaps;
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MAP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbMaps;

    return-object v0
.end method

.method public getMiscStoreDb()Lcom/genie_connect/android/db/access/DbMisc;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mDbMiscStore:Lcom/genie_connect/android/db/access/DbMisc;

    return-object v0
.end method

.method public getNotes()Lcom/genie_connect/android/db/access/DbNotes;
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->NOTE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbNotes;

    return-object v0
.end method

.method public getPermissionGroups()Lcom/genie_connect/android/db/access/DbPermissionGroups;
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PERMISSIONGROUP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbPermissionGroups;

    return-object v0
.end method

.method public getPoisDb()Lcom/genie_connect/android/db/access/DbPoi;
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->POI:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbPoi;

    return-object v0
.end method

.method public getProductsDb()Lcom/genie_connect/android/db/access/DbProducts;
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbProducts;

    return-object v0
.end method

.method public getQrCodes()Lcom/genie_connect/android/db/access/DbQrCodes;
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->QRCODE_CUSTOM:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbQrCodes;

    return-object v0
.end method

.method public getSchedule()Lcom/genie_connect/android/db/access/DbSchedule;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mDbScheduleStore:Lcom/genie_connect/android/db/access/DbSchedule;

    return-object v0
.end method

.method public getSessionsDb()Lcom/genie_connect/android/db/access/DbSessions;
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbSessions;

    return-object v0
.end method

.method public getSpeakersDb()Lcom/genie_connect/android/db/access/DbSpeakers;
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbSpeakers;

    return-object v0
.end method

.method public getSponsorCampaignsDb()Lcom/genie_connect/android/db/access/DbSponsorCampaign;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mDbSponsorCampaignStore:Lcom/genie_connect/android/db/access/DbSponsorCampaign;

    return-object v0
.end method

.method public getStoreForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/android/db/access/BaseDb;
    .locals 1
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/BaseDb;

    return-object v0
.end method

.method public getSubSessions()Lcom/genie_connect/android/db/access/DbSubsessions;
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbSubsessions;

    return-object v0
.end method

.method public getTagsV2()Lcom/genie_connect/android/db/access/DbTagsV2;
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->TAGSV2:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbTagsV2;

    return-object v0
.end method

.method public getTempSlaveDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->isTempSlaveDatabaseExists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->createTempSlaveDb()V

    .line 595
    :cond_0
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getTempSlaveDbPath()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->openOrCreateDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getTrophies()Lcom/genie_connect/android/db/access/DbTrophies;
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->TROPHY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbTrophies;

    return-object v0
.end method

.method public getUdm()Lcom/genie_connect/android/db/access/Udm;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mUdm:Lcom/genie_connect/android/db/access/Udm;

    return-object v0
.end method

.method public getVisitorGroups()Lcom/genie_connect/android/db/access/DbVisitorGroups;
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITORGROUP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbVisitorGroups;

    return-object v0
.end method

.method public getVisitorsDb()Lcom/genie_connect/android/db/access/DbVisitors;
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DbVisitors;

    return-object v0
.end method

.method public hotSwapTempSlaveDatabase()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getTempSlaveDbPath()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelperGenieMobile;->hotSwapSlaveDatabase(Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method public initialiseCaches()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mUdm:Lcom/genie_connect/android/db/access/Udm;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/Udm;->getGameStore()Lcom/genie_connect/android/db/access/GameStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GameStore;->reload()V

    .line 522
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mDbCaches:Lcom/genie_connect/android/db/access/DatabaseCache;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/DatabaseCache;->reload()V

    .line 523
    return-void
.end method

.method public isTempSlaveDatabaseExists()Z
    .locals 2

    .prologue
    .line 599
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getTempSlaveDbPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public masterTablesForValidation()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 553
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "favouriteExhibitors"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "favouriteSpeakers"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected onUpgradeComplete(II)V
    .locals 4
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I

    .prologue
    const/16 v2, 0x33

    .line 217
    if-ge p1, v2, :cond_0

    if-ge p2, v2, :cond_1

    :cond_0
    const/16 v2, 0x34

    if-ne p1, v2, :cond_2

    const/16 v2, 0x35

    if-lt p2, v2, :cond_2

    .line 220
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ Database update from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - setting data download required"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v0

    .line 225
    .local v0, "namespace":J
    iget-object v2, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/genie_connect/android/prefs/PreferencesManager;->getNamespacedPreferences(Landroid/content/Context;J)Lcom/genie_connect/android/prefs/NamespacedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/prefs/NamespacedPreferences;->edit()Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->setDataDownloadRequired(Z)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->commit()Z

    .line 228
    .end local v0    # "namespace":J
    :cond_2
    return-void
.end method

.method public search(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/os/Bundle;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 4
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 526
    const-string v3, "EXTRA_SEARCH_TEXT"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 528
    .local v1, "searchText":Ljava/lang/String;
    invoke-static {}, Lcom/genie_connect/android/bl/tags/TagTreeManager;->getTagTree()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    move-result-object v2

    .line 534
    .local v2, "tagTree":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    iget-object v3, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/interfaces/DataAccessSearch;

    .line 535
    .local v0, "das":Lcom/genie_connect/android/db/access/interfaces/DataAccessSearch;
    invoke-interface {v0, v1, v2}, Lcom/genie_connect/android/db/access/interfaces/DataAccessSearch;->search(Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v3

    return-object v3
.end method

.method public search(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;I)Luk/co/alt236/easycursor/EasyCursor;
    .locals 2
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "searchTerm"    # Ljava/lang/String;
    .param p3, "limit"    # I

    .prologue
    .line 539
    iget-object v1, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/interfaces/DataAccessSearch;

    .line 540
    .local v0, "das":Lcom/genie_connect/android/db/access/interfaces/DataAccessSearch;
    invoke-interface {v0, p2, p3}, Lcom/genie_connect/android/db/access/interfaces/DataAccessSearch;->search(Ljava/lang/String;I)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public searchForLocation(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;I)Luk/co/alt236/easycursor/EasyCursor;
    .locals 2
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "searchTerm"    # Ljava/lang/String;
    .param p3, "limit"    # I

    .prologue
    .line 544
    iget-object v1, p0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->mEntityDbClasses:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/interfaces/DataAccessLocation;

    .line 545
    .local v0, "das":Lcom/genie_connect/android/db/access/interfaces/DataAccessLocation;
    invoke-interface {v0, p2, p3}, Lcom/genie_connect/android/db/access/interfaces/DataAccessLocation;->searchForLocation(Ljava/lang/String;I)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public slaveTablesForValidation()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 561
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "exhibitors"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "speakers"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "locations"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "visitorsurveys"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "surveys"

    aput-object v2, v0, v1

    return-object v0
.end method
