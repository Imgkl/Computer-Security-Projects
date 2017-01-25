.class public Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;
.super Lde/greenrobot/dao/AbstractDaoMaster;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/db/access/gen/dao/DaoMaster$DevOpenHelper;,
        Lcom/genie_connect/android/db/access/gen/dao/DaoMaster$OpenHelper;
    }
.end annotation


# static fields
.field public static final SCHEMA_VERSION:I = 0x34


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 113
    const/16 v0, 0x34

    invoke-direct {p0, p1, v0}, Lde/greenrobot/dao/AbstractDaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 114
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/VisitorGroupDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 115
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/VisitorDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 116
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/NoteDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 117
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/MeetingDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 118
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/MeetingLocationDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 119
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/FavouriteVisitorDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 120
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/FavouriteSpeakerDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 121
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/FavouriteProductDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 122
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/FavouritePoiDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 123
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/FavouriteExhibitorDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 124
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/FavouriteDownloadableDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 125
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/FavouriteActivityStreamPostDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 126
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/FavouriteSubSessionDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 127
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/FavouriteSessionDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 128
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/AgendaItemDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 129
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/TrophyDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 130
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/TrackDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 131
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/TagsV2Dao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 132
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/TagDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 133
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/SubsessionDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 134
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/SpeakerDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 135
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/SessionDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 136
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/SessionCategoryDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 137
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/ScheduleItemDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 138
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/QrCodeCustomDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 139
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/ProductDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 140
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/ProductCategoryDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 141
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/PoiCategoryDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 142
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/PoiDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 143
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/PlayerGameDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 144
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/PermissionGroupDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 145
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/MessageDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 146
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/MapZoneDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 147
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/GenieMapDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 148
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/MapFacilityDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 149
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/LocationDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 150
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/InfoPageDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 151
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/InAppActionDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 152
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/HotspotDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 153
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/GameDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 154
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/ExhibitorTypeDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 155
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/ExhibitorDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 156
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/EventDayDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 157
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/DownloadableDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 158
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/DataVersionDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 159
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/CountryDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 160
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/CategoryDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 161
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/ArticleDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 162
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/ArticleGroupDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 163
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/AppRefDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 164
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/AppRefCategoryDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 165
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/AppDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 166
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/AdCampaignDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 167
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/AdBannerDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 168
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/ActivityStreamPostDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 169
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/ActivityStreamCommentDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 170
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/SurveyDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 171
    const-class v0, Lcom/genie_connect/android/db/access/gen/dao/VisitorsurveyDao;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 172
    return-void
.end method

.method public static createAllTables(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 79
    return-void
.end method

.method public static dropAllTables(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifExists"    # Z

    .prologue
    .line 83
    return-void
.end method


# virtual methods
.method public newSession()Lcom/genie_connect/android/db/access/gen/dao/DaoSession;
    .locals 4

    .prologue
    .line 176
    new-instance v0, Lcom/genie_connect/android/db/access/gen/dao/DaoSession;

    iget-object v1, p0, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lde/greenrobot/dao/identityscope/IdentityScopeType;->Session:Lde/greenrobot/dao/identityscope/IdentityScopeType;

    iget-object v3, p0, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/gen/dao/DaoSession;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lde/greenrobot/dao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public newSession(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lcom/genie_connect/android/db/access/gen/dao/DaoSession;
    .locals 3
    .param p1, "type"    # Lde/greenrobot/dao/identityscope/IdentityScopeType;

    .prologue
    .line 181
    new-instance v0, Lcom/genie_connect/android/db/access/gen/dao/DaoSession;

    iget-object v1, p0, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, Lcom/genie_connect/android/db/access/gen/dao/DaoSession;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lde/greenrobot/dao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic newSession()Lde/greenrobot/dao/AbstractDaoSession;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->newSession()Lcom/genie_connect/android/db/access/gen/dao/DaoSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newSession(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lde/greenrobot/dao/AbstractDaoSession;
    .locals 1
    .param p1, "x0"    # Lde/greenrobot/dao/identityscope/IdentityScopeType;

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->newSession(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lcom/genie_connect/android/db/access/gen/dao/DaoSession;

    move-result-object v0

    return-object v0
.end method
