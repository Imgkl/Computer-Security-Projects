.class public Lcom/genie_connect/common/db/model/MeetingLocation;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "MeetingLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/MeetingLocation$Properties;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "meetinglocations"

.field public static final TABLE_NAME:Ljava/lang/String; = "meetingLocations"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public mapPosition_colour:Ljava/lang/String;

.field public mapPosition_label:Ljava/lang/String;

.field public mapPosition_labelColour:Ljava/lang/String;

.field public mapPosition_map:Ljava/lang/Long;

.field public mapPosition_rotation:Ljava/lang/Long;

.field public mapPosition_textBoundingBox:Ljava/lang/String;

.field public mapPosition_type:Ljava/lang/Long;

.field public mapPosition_vectors:Ljava/lang/String;

.field public mapPosition_vectorsBig:Ljava/lang/String;

.field public mapPosition_vectorsFormat:Ljava/lang/Long;

.field public mapPosition_version:Ljava/lang/Long;

.field public mapPosition_zIndex:Ljava/lang/Long;

.field public meetingsCapacity:Ljava/lang/Long;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/genie_connect/common/db/model/MeetingLocation;->name:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mapPosition_colour"    # Ljava/lang/String;
    .param p2, "mapPosition_vectors"    # Ljava/lang/String;
    .param p3, "mapPosition_zIndex"    # Ljava/lang/Long;
    .param p4, "mapPosition_vectorsFormat"    # Ljava/lang/Long;
    .param p5, "mapPosition_textBoundingBox"    # Ljava/lang/String;
    .param p6, "mapPosition_labelColour"    # Ljava/lang/String;
    .param p7, "mapPosition_rotation"    # Ljava/lang/Long;
    .param p8, "mapPosition_map"    # Ljava/lang/Long;
    .param p9, "mapPosition_label"    # Ljava/lang/String;
    .param p10, "mapPosition_type"    # Ljava/lang/Long;
    .param p11, "mapPosition_version"    # Ljava/lang/Long;
    .param p12, "mapPosition_vectorsBig"    # Ljava/lang/String;
    .param p13, "modifiedBy"    # Ljava/lang/String;
    .param p14, "importCameFrom"    # Ljava/lang/String;
    .param p15, "meetingsCapacity"    # Ljava/lang/Long;
    .param p16, "modifiedDate"    # Ljava/util/Date;
    .param p17, "_id"    # Ljava/lang/String;
    .param p18, "createdBy"    # Ljava/lang/String;
    .param p19, "importBatch"    # Ljava/lang/String;
    .param p20, "name"    # Ljava/lang/String;
    .param p21, "createdDate"    # Ljava/util/Date;
    .param p22, "importKey"    # Ljava/lang/String;
    .param p23, "_namespace"    # Ljava/lang/String;
    .param p24, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/genie_connect/common/db/model/MeetingLocation;->mapPosition_colour:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/genie_connect/common/db/model/MeetingLocation;->mapPosition_vectors:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lcom/genie_connect/common/db/model/MeetingLocation;->mapPosition_zIndex:Ljava/lang/Long;

    .line 103
    iput-object p4, p0, Lcom/genie_connect/common/db/model/MeetingLocation;->mapPosition_vectorsFormat:Ljava/lang/Long;

    .line 104
    iput-object p5, p0, Lcom/genie_connect/common/db/model/MeetingLocation;->mapPosition_textBoundingBox:Ljava/lang/String;

    .line 105
    iput-object p6, p0, Lcom/genie_connect/common/db/model/MeetingLocation;->mapPosition_labelColour:Ljava/lang/String;

    .line 106
    iput-object p7, p0, Lcom/genie_connect/common/db/model/MeetingLocation;->mapPosition_rotation:Ljava/lang/Long;

    .line 107
    iput-object p8, p0, Lcom/genie_connect/common/db/model/MeetingLocation;->mapPosition_map:Ljava/lang/Long;

    .line 108
    iput-object p9, p0, Lcom/genie_connect/common/db/model/MeetingLocation;->mapPosition_label:Ljava/lang/String;

    .line 109
    iput-object p10, p0, Lcom/genie_connect/common/db/model/MeetingLocation;->mapPosition_type:Ljava/lang/Long;

    .line 110
    iput-object p11, p0, Lcom/genie_connect/common/db/model/MeetingLocation;->mapPosition_version:Ljava/lang/Long;

    .line 111
    iput-object p12, p0, Lcom/genie_connect/common/db/model/MeetingLocation;->mapPosition_vectorsBig:Ljava/lang/String;

    .line 112
    iput-object p13, p0, Lcom/genie_connect/common/db/model/MeetingLocation;->modifiedBy:Ljava/lang/String;

    .line 113
    iput-object p14, p0, Lcom/genie_connect/common/db/model/MeetingLocation;->importCameFrom:Ljava/lang/String;

    .line 114
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/MeetingLocation;->meetingsCapacity:Ljava/lang/Long;

    .line 115
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/MeetingLocation;->modifiedDate:Ljava/util/Date;

    .line 116
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/MeetingLocation;->_id:Ljava/lang/String;

    .line 117
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/MeetingLocation;->createdBy:Ljava/lang/String;

    .line 118
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/MeetingLocation;->importBatch:Ljava/lang/String;

    .line 119
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/MeetingLocation;->name:Ljava/lang/String;

    .line 120
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/MeetingLocation;->createdDate:Ljava/util/Date;

    .line 121
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/genie_connect/common/db/model/MeetingLocation;->importKey:Ljava/lang/String;

    .line 122
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/genie_connect/common/db/model/MeetingLocation;->_namespace:Ljava/lang/String;

    .line 123
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/genie_connect/common/db/model/MeetingLocation;->_dataversion:Ljava/lang/String;

    .line 124
    return-void
.end method


# virtual methods
.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "meetinglocations"

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "meetingLocations"

    return-object v0
.end method
