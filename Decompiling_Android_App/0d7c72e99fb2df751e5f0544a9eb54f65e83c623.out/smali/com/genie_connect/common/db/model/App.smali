.class public Lcom/genie_connect/common/db/model/App;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/App$Properties;,
        Lcom/genie_connect/common/db/model/App$AppSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "apps"

.field public static final TABLE_NAME:Ljava/lang/String; = "apps"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public appProcessAnalytics:Ljava/lang/Boolean;

.field public appProcessStartDate:Ljava/util/Date;

.field public appProcessStopDate:Ljava/util/Date;

.field public client:Ljava/lang/Long;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public dashboardAllowed:Ljava/lang/Boolean;

.field public fullDescription:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public incrementNotificationBadgeCounts:Ljava/lang/Boolean;

.field public integrationXSLs:Ljava/lang/Long;

.field public isArchived:Ljava/lang/Boolean;

.field public isTemplate:Ljava/lang/Boolean;

.field public lastProcessedActivities:Ljava/util/Date;

.field public lastProcessedInterests:Ljava/util/Date;

.field public lastProcessedUUIDs:Ljava/util/Date;

.field public lastProcessedVisitors:Ljava/util/Date;

.field public liveVersion:Ljava/lang/String;

.field public locale:Ljava/lang/String;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;

.field public requiresActivityRecompilation:Ljava/lang/Boolean;

.field public requiresInterestsRecompilation:Ljava/lang/Boolean;

.field public servingUrl:Ljava/lang/String;

.field public shortName:Ljava/lang/String;

.field public stagingVersion:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public visitorDataNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/genie_connect/common/db/model/App;->id:Ljava/lang/Long;

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "client"    # Ljava/lang/Long;
    .param p2, "modifiedBy"    # Ljava/lang/String;
    .param p3, "iconUrl"    # Ljava/lang/String;
    .param p4, "locale"    # Ljava/lang/String;
    .param p5, "id"    # Ljava/lang/Long;
    .param p6, "liveVersion"    # Ljava/lang/String;
    .param p7, "servingUrl"    # Ljava/lang/String;
    .param p8, "title"    # Ljava/lang/String;
    .param p9, "fullDescription"    # Ljava/lang/String;
    .param p10, "stagingVersion"    # Ljava/lang/String;
    .param p11, "_id"    # Ljava/lang/String;
    .param p12, "importBatch"    # Ljava/lang/String;
    .param p13, "name"    # Ljava/lang/String;
    .param p14, "integrationXSLs"    # Ljava/lang/Long;
    .param p15, "createdDate"    # Ljava/util/Date;
    .param p16, "incrementNotificationBadgeCounts"    # Ljava/lang/Boolean;
    .param p17, "lastProcessedUUIDs"    # Ljava/util/Date;
    .param p18, "requiresInterestsRecompilation"    # Ljava/lang/Boolean;
    .param p19, "appProcessStopDate"    # Ljava/util/Date;
    .param p20, "appProcessAnalytics"    # Ljava/lang/Boolean;
    .param p21, "importCameFrom"    # Ljava/lang/String;
    .param p22, "isArchived"    # Ljava/lang/Boolean;
    .param p23, "appProcessStartDate"    # Ljava/util/Date;
    .param p24, "modifiedDate"    # Ljava/util/Date;
    .param p25, "dashboardAllowed"    # Ljava/lang/Boolean;
    .param p26, "lastProcessedVisitors"    # Ljava/util/Date;
    .param p27, "requiresActivityRecompilation"    # Ljava/lang/Boolean;
    .param p28, "createdBy"    # Ljava/lang/String;
    .param p29, "lastProcessedActivities"    # Ljava/util/Date;
    .param p30, "isTemplate"    # Ljava/lang/Boolean;
    .param p31, "shortName"    # Ljava/lang/String;
    .param p32, "lastProcessedInterests"    # Ljava/util/Date;
    .param p33, "visitorDataNamespace"    # Ljava/lang/String;
    .param p34, "importKey"    # Ljava/lang/String;
    .param p35, "_namespace"    # Ljava/lang/String;
    .param p36, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/genie_connect/common/db/model/App;->client:Ljava/lang/Long;

    .line 152
    iput-object p2, p0, Lcom/genie_connect/common/db/model/App;->modifiedBy:Ljava/lang/String;

    .line 153
    iput-object p3, p0, Lcom/genie_connect/common/db/model/App;->iconUrl:Ljava/lang/String;

    .line 154
    iput-object p4, p0, Lcom/genie_connect/common/db/model/App;->locale:Ljava/lang/String;

    .line 155
    iput-object p5, p0, Lcom/genie_connect/common/db/model/App;->id:Ljava/lang/Long;

    .line 156
    iput-object p6, p0, Lcom/genie_connect/common/db/model/App;->liveVersion:Ljava/lang/String;

    .line 157
    iput-object p7, p0, Lcom/genie_connect/common/db/model/App;->servingUrl:Ljava/lang/String;

    .line 158
    iput-object p8, p0, Lcom/genie_connect/common/db/model/App;->title:Ljava/lang/String;

    .line 159
    iput-object p9, p0, Lcom/genie_connect/common/db/model/App;->fullDescription:Ljava/lang/String;

    .line 160
    iput-object p10, p0, Lcom/genie_connect/common/db/model/App;->stagingVersion:Ljava/lang/String;

    .line 161
    iput-object p11, p0, Lcom/genie_connect/common/db/model/App;->_id:Ljava/lang/String;

    .line 162
    iput-object p12, p0, Lcom/genie_connect/common/db/model/App;->importBatch:Ljava/lang/String;

    .line 163
    iput-object p13, p0, Lcom/genie_connect/common/db/model/App;->name:Ljava/lang/String;

    .line 164
    iput-object p14, p0, Lcom/genie_connect/common/db/model/App;->integrationXSLs:Ljava/lang/Long;

    .line 165
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/App;->createdDate:Ljava/util/Date;

    .line 166
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/App;->incrementNotificationBadgeCounts:Ljava/lang/Boolean;

    .line 167
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/App;->lastProcessedUUIDs:Ljava/util/Date;

    .line 168
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/App;->requiresInterestsRecompilation:Ljava/lang/Boolean;

    .line 169
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/App;->appProcessStopDate:Ljava/util/Date;

    .line 170
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/App;->appProcessAnalytics:Ljava/lang/Boolean;

    .line 171
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/App;->importCameFrom:Ljava/lang/String;

    .line 172
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/genie_connect/common/db/model/App;->isArchived:Ljava/lang/Boolean;

    .line 173
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/genie_connect/common/db/model/App;->appProcessStartDate:Ljava/util/Date;

    .line 174
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/genie_connect/common/db/model/App;->modifiedDate:Ljava/util/Date;

    .line 175
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/genie_connect/common/db/model/App;->dashboardAllowed:Ljava/lang/Boolean;

    .line 176
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/genie_connect/common/db/model/App;->lastProcessedVisitors:Ljava/util/Date;

    .line 177
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/genie_connect/common/db/model/App;->requiresActivityRecompilation:Ljava/lang/Boolean;

    .line 178
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/genie_connect/common/db/model/App;->createdBy:Ljava/lang/String;

    .line 179
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/genie_connect/common/db/model/App;->lastProcessedActivities:Ljava/util/Date;

    .line 180
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/genie_connect/common/db/model/App;->isTemplate:Ljava/lang/Boolean;

    .line 181
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/genie_connect/common/db/model/App;->shortName:Ljava/lang/String;

    .line 182
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/genie_connect/common/db/model/App;->lastProcessedInterests:Ljava/util/Date;

    .line 183
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/genie_connect/common/db/model/App;->visitorDataNamespace:Ljava/lang/String;

    .line 184
    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/genie_connect/common/db/model/App;->importKey:Ljava/lang/String;

    .line 185
    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/genie_connect/common/db/model/App;->_namespace:Ljava/lang/String;

    .line 186
    move-object/from16 v0, p36

    iput-object v0, p0, Lcom/genie_connect/common/db/model/App;->_dataversion:Ljava/lang/String;

    .line 187
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 6

    .prologue
    .line 68
    sget-object v0, Lcom/genie_connect/common/db/model/App;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "name"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "currentVersion"

    sget-object v5, Lcom/genie_connect/common/db/model/App;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/App;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-string v0, "apps"

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/genie_connect/common/db/model/App;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string v0, "apps"

    return-object v0
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/genie_connect/common/db/model/App;->id:Ljava/lang/Long;

    .line 139
    return-void
.end method
