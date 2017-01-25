.class public Lcom/genie_connect/common/db/model/Note$Properties;
.super Ljava/lang/Object;
.source "Note.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/common/db/model/Note;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final CreatedBy:Lde/greenrobot/dao/Property;

.field public static final CreatedDate:Lde/greenrobot/dao/Property;

.field public static final Id:Lde/greenrobot/dao/Property;

.field public static final ImportBatch:Lde/greenrobot/dao/Property;

.field public static final ImportCameFrom:Lde/greenrobot/dao/Property;

.field public static final ImportKey:Lde/greenrobot/dao/Property;

.field public static final ModifiedBy:Lde/greenrobot/dao/Property;

.field public static final ModifiedDate:Lde/greenrobot/dao/Property;

.field public static final Note:Lde/greenrobot/dao/Property;

.field public static final RelatedActivityStreamPost:Lde/greenrobot/dao/Property;

.field public static final RelatedDownloadable:Lde/greenrobot/dao/Property;

.field public static final RelatedExhibitor:Lde/greenrobot/dao/Property;

.field public static final RelatedPoi:Lde/greenrobot/dao/Property;

.field public static final RelatedProduct:Lde/greenrobot/dao/Property;

.field public static final RelatedSession:Lde/greenrobot/dao/Property;

.field public static final RelatedSpeaker:Lde/greenrobot/dao/Property;

.field public static final RelatedSubSession:Lde/greenrobot/dao/Property;

.field public static final RelatedVisitor:Lde/greenrobot/dao/Property;

.field public static final Type:Lde/greenrobot/dao/Property;

.field public static final Visitor:Lde/greenrobot/dao/Property;

.field public static final _dataversion:Lde/greenrobot/dao/Property;

.field public static final _id:Lde/greenrobot/dao/Property;

.field public static final _namespace:Lde/greenrobot/dao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 83
    new-instance v0, Lde/greenrobot/dao/Property;

    const-class v2, Ljava/lang/Long;

    const-string v3, "relatedSpeaker"

    const-string v5, "relatedSpeaker"

    const-string v6, "notes"

    move v4, v1

    invoke-direct/range {v0 .. v6}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/db/model/Note$Properties;->RelatedSpeaker:Lde/greenrobot/dao/Property;

    .line 84
    new-instance v2, Lde/greenrobot/dao/Property;

    const-class v4, Ljava/lang/Long;

    const-string v5, "relatedActivityStreamPost"

    const-string v7, "relatedActivityStreamPost"

    const-string v8, "notes"

    move v3, v9

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Note$Properties;->RelatedActivityStreamPost:Lde/greenrobot/dao/Property;

    .line 85
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    const-string v5, "modifiedBy"

    const-string v7, "modifiedBy"

    const-string v8, "notes"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Note$Properties;->ModifiedBy:Lde/greenrobot/dao/Property;

    .line 86
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/Long;

    const-string v5, "relatedExhibitor"

    const-string v7, "relatedExhibitor"

    const-string v8, "notes"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Note$Properties;->RelatedExhibitor:Lde/greenrobot/dao/Property;

    .line 87
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x4

    const-class v4, Ljava/lang/Long;

    const-string v5, "relatedPoi"

    const-string v7, "relatedPoi"

    const-string v8, "notes"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Note$Properties;->RelatedPoi:Lde/greenrobot/dao/Property;

    .line 88
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x5

    const-class v4, Ljava/lang/Long;

    const-string v5, "relatedSession"

    const-string v7, "relatedSession"

    const-string v8, "notes"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Note$Properties;->RelatedSession:Lde/greenrobot/dao/Property;

    .line 89
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x6

    const-class v4, Ljava/lang/String;

    const-string v5, "importCameFrom"

    const-string v7, "importCameFrom"

    const-string v8, "notes"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Note$Properties;->ImportCameFrom:Lde/greenrobot/dao/Property;

    .line 90
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x7

    const-class v4, Ljava/lang/String;

    const-string/jumbo v5, "type"

    const-string/jumbo v7, "type"

    const-string v8, "notes"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Note$Properties;->Type:Lde/greenrobot/dao/Property;

    .line 91
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x8

    const-class v4, Ljava/lang/Long;

    const-string v5, "relatedVisitor"

    const-string v7, "relatedVisitor"

    const-string v8, "notes"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Note$Properties;->RelatedVisitor:Lde/greenrobot/dao/Property;

    .line 92
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x9

    const-class v4, Ljava/lang/Long;

    const-string/jumbo v5, "visitor"

    const-string/jumbo v7, "visitor"

    const-string v8, "notes"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Note$Properties;->Visitor:Lde/greenrobot/dao/Property;

    .line 93
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xa

    const-class v4, Ljava/util/Date;

    const-string v5, "modifiedDate"

    const-string v7, "modifiedDate"

    const-string v8, "notes"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Note$Properties;->ModifiedDate:Lde/greenrobot/dao/Property;

    .line 94
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xb

    const-class v4, Ljava/lang/Long;

    const-string v5, "relatedDownloadable"

    const-string v7, "relatedDownloadable"

    const-string v8, "notes"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Note$Properties;->RelatedDownloadable:Lde/greenrobot/dao/Property;

    .line 95
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xc

    const-class v4, Ljava/lang/Long;

    const-string v5, "id"

    const-string v7, "id"

    const-string v8, "notes"

    move v6, v9

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Note$Properties;->Id:Lde/greenrobot/dao/Property;

    .line 96
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xd

    const-class v4, Ljava/lang/String;

    const-string v5, "_id"

    const-string v7, "_id"

    const-string v8, "notes"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Note$Properties;->_id:Lde/greenrobot/dao/Property;

    .line 97
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xe

    const-class v4, Ljava/lang/String;

    const-string v5, "createdBy"

    const-string v7, "createdBy"

    const-string v8, "notes"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Note$Properties;->CreatedBy:Lde/greenrobot/dao/Property;

    .line 98
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xf

    const-class v4, Ljava/lang/Long;

    const-string v5, "relatedSubSession"

    const-string v7, "relatedSubSession"

    const-string v8, "notes"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Note$Properties;->RelatedSubSession:Lde/greenrobot/dao/Property;

    .line 99
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x10

    const-class v4, Ljava/lang/String;

    const-string v5, "importBatch"

    const-string v7, "importBatch"

    const-string v8, "notes"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Note$Properties;->ImportBatch:Lde/greenrobot/dao/Property;

    .line 100
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x11

    const-class v4, Ljava/lang/Long;

    const-string v5, "relatedProduct"

    const-string v7, "relatedProduct"

    const-string v8, "notes"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Note$Properties;->RelatedProduct:Lde/greenrobot/dao/Property;

    .line 101
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x12

    const-class v4, Ljava/util/Date;

    const-string v5, "createdDate"

    const-string v7, "createdDate"

    const-string v8, "notes"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Note$Properties;->CreatedDate:Lde/greenrobot/dao/Property;

    .line 102
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x13

    const-class v4, Ljava/lang/String;

    const-string v5, "note"

    const-string v7, "note"

    const-string v8, "notes"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Note$Properties;->Note:Lde/greenrobot/dao/Property;

    .line 103
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x14

    const-class v4, Ljava/lang/String;

    const-string v5, "importKey"

    const-string v7, "importKey"

    const-string v8, "notes"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Note$Properties;->ImportKey:Lde/greenrobot/dao/Property;

    .line 104
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x15

    const-class v4, Ljava/lang/String;

    const-string v5, "_namespace"

    const-string v7, "_namespace"

    const-string v8, "notes"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Note$Properties;->_namespace:Lde/greenrobot/dao/Property;

    .line 105
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x16

    const-class v4, Ljava/lang/String;

    const-string v5, "_dataversion"

    const-string v7, "_dataversion"

    const-string v8, "notes"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Note$Properties;->_dataversion:Lde/greenrobot/dao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
