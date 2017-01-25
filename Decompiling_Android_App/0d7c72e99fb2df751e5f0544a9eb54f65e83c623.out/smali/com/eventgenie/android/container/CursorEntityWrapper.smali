.class public final Lcom/eventgenie/android/container/CursorEntityWrapper;
.super Ljava/lang/Object;
.source "CursorEntityWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/eventgenie/android/activities/base/ActivityFields;
.implements Lcom/eventgenie/android/container/EntityWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/container/CursorEntityWrapper$2;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/eventgenie/android/container/CursorEntityWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENTITY_TYPE_COLUMN:Ljava/lang/String; = "_entityType"


# instance fields
.field private final mColor:Ljava/lang/String;

.field private final mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field private final mFullDescription:Ljava/lang/String;

.field private final mHasNote:Z

.field private final mId:J

.field private final mImageUrl:Ljava/lang/String;

.field private final mIsBookmarked:Z

.field private final mIsFavourite:Z

.field private final mIsFeatured:Z

.field private final mListModifier:Lcom/genie_connect/android/db/config/features/GmListModifier;

.field private final mLocation:Ljava/lang/String;

.field private final mMiddleLeft:Ljava/lang/String;

.field private final mMiddleRight:Ljava/lang/String;

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 364
    new-instance v0, Lcom/eventgenie/android/container/CursorEntityWrapper$1;

    invoke-direct {v0}, Lcom/eventgenie/android/container/CursorEntityWrapper$1;-><init>()V

    sput-object v0, Lcom/eventgenie/android/container/CursorEntityWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Luk/co/alt236/easycursor/EasyCursor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p3, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 96
    const-string v0, "id"

    invoke-interface {p3, v0}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mId:J

    .line 98
    const-string v0, "colour"

    invoke-interface {p3, v0}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mColor:Ljava/lang/String;

    .line 99
    const-string v0, "fullDescription"

    invoke-interface {p3, v0}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mFullDescription:Ljava/lang/String;

    .line 100
    invoke-static {p3}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->hasNote(Luk/co/alt236/easycursor/EasyCursor;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mHasNote:Z

    .line 101
    iget-object v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {v0, p3}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->getImageUrl(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Luk/co/alt236/easycursor/EasyCursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mImageUrl:Ljava/lang/String;

    .line 102
    invoke-static {p3}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->isFavoute(Luk/co/alt236/easycursor/EasyCursor;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mIsFavourite:Z

    .line 103
    invoke-static {p3}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->isBookmarked(Luk/co/alt236/easycursor/EasyCursor;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mIsBookmarked:Z

    .line 104
    invoke-static {p3}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->isFeatured(Luk/co/alt236/easycursor/EasyCursor;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mIsFeatured:Z

    .line 105
    invoke-static {p2, p3}, Lcom/eventgenie/android/container/CursorEntityWrapper;->calcMiddleLeftValue(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Luk/co/alt236/easycursor/EasyCursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mMiddleLeft:Ljava/lang/String;

    .line 106
    invoke-static {p2, p3}, Lcom/eventgenie/android/container/CursorEntityWrapper;->calcMiddleRightValue(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Luk/co/alt236/easycursor/EasyCursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mMiddleRight:Ljava/lang/String;

    .line 107
    invoke-static {p2, p3}, Lcom/eventgenie/android/container/CursorEntityWrapper;->calcLocation(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Luk/co/alt236/easycursor/EasyCursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mLocation:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {v0, p3}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->getName(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Luk/co/alt236/easycursor/EasyCursor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/container/CursorEntityWrapper;->safeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mName:Ljava/lang/String;

    .line 110
    invoke-static {p1}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/config/FeatureConfig;->getListModifierForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/android/db/config/features/GmListModifier;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mListModifier:Lcom/genie_connect/android/db/config/features/GmListModifier;

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Luk/co/alt236/easycursor/EasyCursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 89
    const-string v0, "_entityType"

    invoke-interface {p2, v0}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromString(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/eventgenie/android/container/CursorEntityWrapper;-><init>(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Luk/co/alt236/easycursor/EasyCursor;)V

    .line 92
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mColor:Ljava/lang/String;

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mFullDescription:Ljava/lang/String;

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mImageUrl:Ljava/lang/String;

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mMiddleLeft:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mMiddleRight:Ljava/lang/String;

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mName:Ljava/lang/String;

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mLocation:Ljava/lang/String;

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mId:J

    .line 350
    const/4 v2, 0x4

    new-array v0, v2, [Z

    .line 351
    .local v0, "booleanArray":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 352
    aget-boolean v2, v0, v4

    iput-boolean v2, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mHasNote:Z

    .line 353
    const/4 v2, 0x1

    aget-boolean v2, v0, v2

    iput-boolean v2, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mIsFavourite:Z

    .line 354
    const/4 v2, 0x2

    aget-boolean v2, v0, v2

    iput-boolean v2, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mIsFeatured:Z

    .line 355
    const/4 v2, 0x3

    aget-boolean v2, v0, v2

    iput-boolean v2, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mIsBookmarked:Z

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iput-object v2, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 357
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getAppContext()Lcom/eventgenie/android/EventGenieApplication;

    move-result-object v1

    .line 358
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v2, v3}, Lcom/genie_connect/android/db/config/FeatureConfig;->getListModifierForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/android/db/config/features/GmListModifier;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mListModifier:Lcom/genie_connect/android/db/config/features/GmListModifier;

    .line 362
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/eventgenie/android/container/CursorEntityWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/eventgenie/android/container/CursorEntityWrapper$1;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/eventgenie/android/container/CursorEntityWrapper;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static calcLocation(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Luk/co/alt236/easycursor/EasyCursor;)Ljava/lang/String;
    .locals 2
    .param p0, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p1, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 241
    const-string v1, "locations"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "methodResult":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 244
    const-string v1, "location"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    :cond_0
    return-object v0
.end method

.method private static calcMiddleLeftValue(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Luk/co/alt236/easycursor/EasyCursor;)Ljava/lang/String;
    .locals 3
    .param p0, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p1, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 254
    sget-object v1, Lcom/eventgenie/android/container/CursorEntityWrapper$2;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    invoke-virtual {p0}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 266
    const/4 v0, 0x0

    .line 269
    .local v0, "methodResult":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 256
    .end local v0    # "methodResult":Ljava/lang/String;
    :pswitch_0
    const-string v1, "exhibitorType"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .restart local v0    # "methodResult":Ljava/lang/String;
    goto :goto_0

    .line 259
    .end local v0    # "methodResult":Ljava/lang/String;
    :pswitch_1
    const-string v1, "fileType"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .restart local v0    # "methodResult":Ljava/lang/String;
    goto :goto_0

    .line 263
    .end local v0    # "methodResult":Ljava/lang/String;
    :pswitch_2
    const-string v1, "runningTime_from"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .restart local v0    # "methodResult":Ljava/lang/String;
    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static calcMiddleRightValue(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Luk/co/alt236/easycursor/EasyCursor;)Ljava/lang/String;
    .locals 3
    .param p0, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p1, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 276
    sget-object v1, Lcom/eventgenie/android/container/CursorEntityWrapper$2;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    invoke-virtual {p0}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 298
    :pswitch_0
    const/4 v0, 0x0

    .line 301
    .local v0, "methodResult":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 278
    .end local v0    # "methodResult":Ljava/lang/String;
    :pswitch_1
    const-string v1, "locations"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 279
    const-string v1, "locations"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "methodResult":Ljava/lang/String;
    goto :goto_0

    .line 281
    .end local v0    # "methodResult":Ljava/lang/String;
    :cond_0
    const-string v1, "multilocations"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    .restart local v0    # "methodResult":Ljava/lang/String;
    goto :goto_0

    .line 285
    .end local v0    # "methodResult":Ljava/lang/String;
    :pswitch_2
    const-string v1, "exhibitorName"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .restart local v0    # "methodResult":Ljava/lang/String;
    goto :goto_0

    .line 288
    .end local v0    # "methodResult":Ljava/lang/String;
    :pswitch_3
    const-string v1, "companyName"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .restart local v0    # "methodResult":Ljava/lang/String;
    goto :goto_0

    .line 291
    .end local v0    # "methodResult":Ljava/lang/String;
    :pswitch_4
    const-string v1, "companyName"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .restart local v0    # "methodResult":Ljava/lang/String;
    goto :goto_0

    .line 295
    .end local v0    # "methodResult":Ljava/lang/String;
    :pswitch_5
    const-string v1, "runningTime_to"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .restart local v0    # "methodResult":Ljava/lang/String;
    goto :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static safeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 305
    if-nez p0, :cond_0

    .line 306
    const-string p0, ""

    .line 308
    .end local p0    # "text":Ljava/lang/String;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public allowDelete()Z
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public generateDetailsIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, "i":Landroid/content/Intent;
    sget-object v1, Lcom/eventgenie/android/container/CursorEntityWrapper$2;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    invoke-virtual {p0}, Lcom/eventgenie/android/container/CursorEntityWrapper;->getEntityType()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 421
    :goto_0
    return-object v0

    .line 386
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "i":Landroid/content/Intent;
    const-class v1, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 387
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v1, "entity_id"

    invoke-virtual {p0}, Lcom/eventgenie/android/container/CursorEntityWrapper;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 390
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "i":Landroid/content/Intent;
    const-class v1, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 391
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v1, "entity_id"

    invoke-virtual {p0}, Lcom/eventgenie/android/container/CursorEntityWrapper;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 392
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 395
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "i":Landroid/content/Intent;
    const-class v1, Lcom/eventgenie/android/activities/products/ProductDetailsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 396
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v1, "entity_id"

    invoke-virtual {p0}, Lcom/eventgenie/android/container/CursorEntityWrapper;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 399
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "i":Landroid/content/Intent;
    const-class v1, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 400
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v1, "entity_id"

    invoke-virtual {p0}, Lcom/eventgenie/android/container/CursorEntityWrapper;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 403
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "i":Landroid/content/Intent;
    const-class v1, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 404
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v1, "entity_id"

    invoke-virtual {p0}, Lcom/eventgenie/android/container/CursorEntityWrapper;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 407
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "i":Landroid/content/Intent;
    const-class v1, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 408
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v1, "entity_id"

    invoke-virtual {p0}, Lcom/eventgenie/android/container/CursorEntityWrapper;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 411
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "i":Landroid/content/Intent;
    const-class v1, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 412
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v1, "entity_id"

    invoke-virtual {p0}, Lcom/eventgenie/android/container/CursorEntityWrapper;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 415
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "i":Landroid/content/Intent;
    const-class v1, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 416
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v1, "entity_id"

    invoke-virtual {p0}, Lcom/eventgenie/android/container/CursorEntityWrapper;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto/16 :goto_0

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public getEntityType()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method

.method public getFullDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mFullDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mId:J

    return-wide v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicatorColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mColor:Ljava/lang/String;

    return-object v0
.end method

.method public getListModifier()Lcom/genie_connect/android/db/config/features/GmListModifier;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mListModifier:Lcom/genie_connect/android/db/config/features/GmListModifier;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getMiddleLeftRowValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mMiddleLeft:Ljava/lang/String;

    return-object v0
.end method

.method public getMiddleRightRowValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mMiddleRight:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hasNote()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mHasNote:Z

    return v0
.end method

.method public isBookmarked()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mIsBookmarked:Z

    return v0
.end method

.method public isFavourite()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mIsFavourite:Z

    return v0
.end method

.method public isFeatured()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mIsFeatured:Z

    return v0
.end method

.method public limitDescription()Z
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GenericEntityWrapper [mEntityType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mListModifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mListModifier:Lcom/genie_connect/android/db/config/features/GmListModifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFullDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mFullDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMiddleLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mMiddleLeft:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMiddleRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mMiddleRight:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasNote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mHasNote:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsFavourite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mIsFavourite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsFeatured="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mIsFeatured:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 323
    iget-object v1, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mColor:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mFullDescription:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mMiddleLeft:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mMiddleRight:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    iget-wide v2, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mId:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 331
    const/4 v1, 0x4

    new-array v0, v1, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mHasNote:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mIsFavourite:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mIsFeatured:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mIsBookmarked:Z

    aput-boolean v2, v0, v1

    .line 332
    .local v0, "booleanArray":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 333
    iget-object v1, p0, Lcom/eventgenie/android/container/CursorEntityWrapper;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 334
    return-void
.end method
