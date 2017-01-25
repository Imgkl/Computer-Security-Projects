.class public Lcom/genie_connect/common/db/model/Note;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "Note.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/Note$Properties;,
        Lcom/genie_connect/common/db/model/Note$NoteSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "notes"

.field public static final TABLE_NAME:Ljava/lang/String; = "notes"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public id:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public note:Ljava/lang/String;

.field public relatedActivityStreamPost:Ljava/lang/Long;

.field public relatedDownloadable:Ljava/lang/Long;

.field public relatedExhibitor:Ljava/lang/Long;

.field public relatedPoi:Ljava/lang/Long;

.field public relatedProduct:Ljava/lang/Long;

.field public relatedSession:Ljava/lang/Long;

.field public relatedSpeaker:Ljava/lang/Long;

.field public relatedSubSession:Ljava/lang/Long;

.field public relatedVisitor:Ljava/lang/Long;

.field public type:Ljava/lang/String;

.field public visitor:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Note;->id:Ljava/lang/Long;

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "relatedSpeaker"    # Ljava/lang/Long;
    .param p2, "relatedActivityStreamPost"    # Ljava/lang/Long;
    .param p3, "modifiedBy"    # Ljava/lang/String;
    .param p4, "relatedExhibitor"    # Ljava/lang/Long;
    .param p5, "relatedPoi"    # Ljava/lang/Long;
    .param p6, "relatedSession"    # Ljava/lang/Long;
    .param p7, "importCameFrom"    # Ljava/lang/String;
    .param p8, "type"    # Ljava/lang/String;
    .param p9, "relatedVisitor"    # Ljava/lang/Long;
    .param p10, "visitor"    # Ljava/lang/Long;
    .param p11, "modifiedDate"    # Ljava/util/Date;
    .param p12, "relatedDownloadable"    # Ljava/lang/Long;
    .param p13, "id"    # Ljava/lang/Long;
    .param p14, "_id"    # Ljava/lang/String;
    .param p15, "createdBy"    # Ljava/lang/String;
    .param p16, "relatedSubSession"    # Ljava/lang/Long;
    .param p17, "importBatch"    # Ljava/lang/String;
    .param p18, "relatedProduct"    # Ljava/lang/Long;
    .param p19, "createdDate"    # Ljava/util/Date;
    .param p20, "note"    # Ljava/lang/String;
    .param p21, "importKey"    # Ljava/lang/String;
    .param p22, "_namespace"    # Ljava/lang/String;
    .param p23, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Note;->relatedSpeaker:Ljava/lang/Long;

    .line 141
    iput-object p2, p0, Lcom/genie_connect/common/db/model/Note;->relatedActivityStreamPost:Ljava/lang/Long;

    .line 142
    iput-object p3, p0, Lcom/genie_connect/common/db/model/Note;->modifiedBy:Ljava/lang/String;

    .line 143
    iput-object p4, p0, Lcom/genie_connect/common/db/model/Note;->relatedExhibitor:Ljava/lang/Long;

    .line 144
    iput-object p5, p0, Lcom/genie_connect/common/db/model/Note;->relatedPoi:Ljava/lang/Long;

    .line 145
    iput-object p6, p0, Lcom/genie_connect/common/db/model/Note;->relatedSession:Ljava/lang/Long;

    .line 146
    iput-object p7, p0, Lcom/genie_connect/common/db/model/Note;->importCameFrom:Ljava/lang/String;

    .line 147
    iput-object p8, p0, Lcom/genie_connect/common/db/model/Note;->type:Ljava/lang/String;

    .line 148
    iput-object p9, p0, Lcom/genie_connect/common/db/model/Note;->relatedVisitor:Ljava/lang/Long;

    .line 149
    iput-object p10, p0, Lcom/genie_connect/common/db/model/Note;->visitor:Ljava/lang/Long;

    .line 150
    iput-object p11, p0, Lcom/genie_connect/common/db/model/Note;->modifiedDate:Ljava/util/Date;

    .line 151
    iput-object p12, p0, Lcom/genie_connect/common/db/model/Note;->relatedDownloadable:Ljava/lang/Long;

    .line 152
    iput-object p13, p0, Lcom/genie_connect/common/db/model/Note;->id:Ljava/lang/Long;

    .line 153
    iput-object p14, p0, Lcom/genie_connect/common/db/model/Note;->_id:Ljava/lang/String;

    .line 154
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Note;->createdBy:Ljava/lang/String;

    .line 155
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Note;->relatedSubSession:Ljava/lang/Long;

    .line 156
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Note;->importBatch:Ljava/lang/String;

    .line 157
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Note;->relatedProduct:Ljava/lang/Long;

    .line 158
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Note;->createdDate:Ljava/util/Date;

    .line 159
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Note;->note:Ljava/lang/String;

    .line 160
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Note;->importKey:Ljava/lang/String;

    .line 161
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Note;->_namespace:Ljava/lang/String;

    .line 162
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Note;->_dataversion:Ljava/lang/String;

    .line 163
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 6

    .prologue
    .line 49
    sget-object v0, Lcom/genie_connect/common/db/model/Note;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "note"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v4, "visitor"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "relatedDownloadable"

    sget-object v5, Lcom/genie_connect/common/db/model/Note;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "relatedExhibitor"

    sget-object v5, Lcom/genie_connect/common/db/model/Note;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "relatedPoi"

    sget-object v5, Lcom/genie_connect/common/db/model/Note;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "relatedProduct"

    sget-object v5, Lcom/genie_connect/common/db/model/Note;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "relatedSession"

    sget-object v5, Lcom/genie_connect/common/db/model/Note;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "relatedSpeaker"

    sget-object v5, Lcom/genie_connect/common/db/model/Note;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "relatedSubSession"

    sget-object v5, Lcom/genie_connect/common/db/model/Note;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "relatedVisitor"

    sget-object v5, Lcom/genie_connect/common/db/model/Note;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/Note;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const-string v0, "notes"

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Note;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string v0, "notes"

    return-object v0
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Note;->id:Ljava/lang/Long;

    .line 128
    return-void
.end method
