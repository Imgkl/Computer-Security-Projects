.class public Lcom/genie_connect/common/db/model/ActivityStreamComment;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "ActivityStreamComment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/ActivityStreamComment$Properties;,
        Lcom/genie_connect/common/db/model/ActivityStreamComment$ActivityStreamCommentsSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "activitystreamcomments"

.field public static final TABLE_NAME:Ljava/lang/String; = "activityStreamComments"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public abuseStatus:Ljava/lang/String;

.field public activityStreamPostId:Ljava/lang/Long;

.field public author_exhibitor:Ljava/lang/Long;

.field public author_imageUrl:Ljava/lang/String;

.field public author_linkUrl:Ljava/lang/String;

.field public author_name:Ljava/lang/String;

.field public author_visitor:Ljava/lang/Long;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public id:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public liveStatus:Ljava/lang/Long;

.field public message:Ljava/lang/String;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public noComments:Ljava/lang/Long;

.field public preAbuseLiveStatus:Ljava/lang/Long;

.field public scheduledDate:Ljava/util/Date;

.field public scheduledLiveStatus:Ljava/lang/Long;

.field public scheduledTaskName:Ljava/lang/String;

.field public timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->id:Ljava/lang/Long;

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "liveStatus"    # Ljava/lang/Long;
    .param p2, "scheduledTaskName"    # Ljava/lang/String;
    .param p3, "modifiedBy"    # Ljava/lang/String;
    .param p4, "preAbuseLiveStatus"    # Ljava/lang/Long;
    .param p5, "importCameFrom"    # Ljava/lang/String;
    .param p6, "modifiedDate"    # Ljava/util/Date;
    .param p7, "message"    # Ljava/lang/String;
    .param p8, "noComments"    # Ljava/lang/Long;
    .param p9, "timestamp"    # Ljava/util/Date;
    .param p10, "id"    # Ljava/lang/Long;
    .param p11, "scheduledDate"    # Ljava/util/Date;
    .param p12, "author_linkUrl"    # Ljava/lang/String;
    .param p13, "author_imageUrl"    # Ljava/lang/String;
    .param p14, "author_name"    # Ljava/lang/String;
    .param p15, "author_exhibitor"    # Ljava/lang/Long;
    .param p16, "author_visitor"    # Ljava/lang/Long;
    .param p17, "scheduledLiveStatus"    # Ljava/lang/Long;
    .param p18, "_id"    # Ljava/lang/String;
    .param p19, "createdBy"    # Ljava/lang/String;
    .param p20, "abuseStatus"    # Ljava/lang/String;
    .param p21, "importBatch"    # Ljava/lang/String;
    .param p22, "createdDate"    # Ljava/util/Date;
    .param p23, "activityStreamPostId"    # Ljava/lang/Long;
    .param p24, "importKey"    # Ljava/lang/String;
    .param p25, "_namespace"    # Ljava/lang/String;
    .param p26, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->liveStatus:Ljava/lang/Long;

    .line 148
    iput-object p2, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->scheduledTaskName:Ljava/lang/String;

    .line 149
    iput-object p3, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->modifiedBy:Ljava/lang/String;

    .line 150
    iput-object p4, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->preAbuseLiveStatus:Ljava/lang/Long;

    .line 151
    iput-object p5, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->importCameFrom:Ljava/lang/String;

    .line 152
    iput-object p6, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->modifiedDate:Ljava/util/Date;

    .line 153
    iput-object p7, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->message:Ljava/lang/String;

    .line 154
    iput-object p8, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->noComments:Ljava/lang/Long;

    .line 155
    iput-object p9, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->timestamp:Ljava/util/Date;

    .line 156
    iput-object p10, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->id:Ljava/lang/Long;

    .line 157
    iput-object p11, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->scheduledDate:Ljava/util/Date;

    .line 158
    iput-object p12, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->author_linkUrl:Ljava/lang/String;

    .line 159
    iput-object p13, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->author_imageUrl:Ljava/lang/String;

    .line 160
    iput-object p14, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->author_name:Ljava/lang/String;

    .line 161
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->author_exhibitor:Ljava/lang/Long;

    .line 162
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->author_visitor:Ljava/lang/Long;

    .line 163
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->scheduledLiveStatus:Ljava/lang/Long;

    .line 164
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->_id:Ljava/lang/String;

    .line 165
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->createdBy:Ljava/lang/String;

    .line 166
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->abuseStatus:Ljava/lang/String;

    .line 167
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->importBatch:Ljava/lang/String;

    .line 168
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->createdDate:Ljava/util/Date;

    .line 169
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->activityStreamPostId:Ljava/lang/Long;

    .line 170
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->importKey:Ljava/lang/String;

    .line 171
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->_namespace:Ljava/lang/String;

    .line 172
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->_dataversion:Ljava/lang/String;

    .line 173
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 8

    .prologue
    .line 55
    sget-object v0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "liveStatus"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "message"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v4, "timestamp"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->DATE:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;

    const-string v4, "author"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->AUTHOR_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;-><init>(Ljava/lang/String;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "abuseStatus"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "activityStreamPost"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "relatedTags"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "relatedTags"

    sget-object v7, Lcom/genie_connect/common/db/model/ActivityStreamComment;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/ActivityStreamComment;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string v0, "activitystreamcomments"

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "activityStreamComments"

    return-object v0
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->id:Ljava/lang/Long;

    .line 135
    return-void
.end method
