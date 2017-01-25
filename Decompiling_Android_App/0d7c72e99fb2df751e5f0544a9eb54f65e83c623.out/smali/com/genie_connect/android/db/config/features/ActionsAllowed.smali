.class public final Lcom/genie_connect/android/db/config/features/ActionsAllowed;
.super Ljava/lang/Object;
.source "ActionsAllowed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/db/config/features/ActionsAllowed$1;,
        Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;
    }
.end annotation


# static fields
.field public static final DISABLE_ALL:I = 0x0

.field public static final FAVOURITE_GENIE_INTENTS:I = 0x4

.field public static final FAVOURITE_SERVER_VALIDATED:I = 0x8

.field public static final FAVOURITE_STAR:I = 0x2

.field public static final FAVOURITE_STAR_AND_NOTES:I = 0x3

.field public static final NOTES:I = 0x1

.field public static final SESSIONS_FAVOURITING_ENABLED:I = 0x10


# instance fields
.field private final mExhibitors:I

.field private final mPois:I

.field private final mProducts:I

.field private final mSessions:I

.field private final mSpeakers:I

.field private final mSubsessions:I

.field private final mVisitors:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/AppConfig;)V
    .locals 5
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "config"    # Lcom/genie_connect/android/db/config/AppConfig;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-nez p1, :cond_2

    .line 70
    const-string v4, "^ ACTIONSALLOWED: Compatibility mode!"

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/AppConfig;->isFavouritesEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x2

    .line 73
    .local v0, "favsValue":I
    :goto_0
    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/AppConfig;->isNotesEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 74
    .local v1, "notesValue":I
    :goto_1
    add-int v2, v0, v1

    .line 76
    .local v2, "value":I
    iput v2, p0, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->mExhibitors:I

    .line 77
    iput v2, p0, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->mPois:I

    .line 78
    iput v2, p0, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->mProducts:I

    .line 79
    iput v2, p0, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->mSessions:I

    .line 80
    iput v2, p0, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->mSpeakers:I

    .line 81
    iput v2, p0, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->mSubsessions:I

    .line 82
    iput v2, p0, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->mVisitors:I

    .line 92
    .end local v0    # "favsValue":I
    .end local v1    # "notesValue":I
    .end local v2    # "value":I
    :goto_2
    return-void

    :cond_0
    move v0, v3

    .line 72
    goto :goto_0

    .restart local v0    # "favsValue":I
    :cond_1
    move v1, v3

    .line 73
    goto :goto_1

    .line 84
    .end local v0    # "favsValue":I
    :cond_2
    const-string v3, "exhibitors"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->mExhibitors:I

    .line 85
    const-string v3, "pois"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->mPois:I

    .line 86
    const-string v3, "products"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->mProducts:I

    .line 87
    const-string v3, "sessions"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->mSessions:I

    .line 88
    const-string v3, "speakers"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->mSpeakers:I

    .line 89
    const-string v3, "subsessions"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->mSubsessions:I

    .line 90
    const-string/jumbo v3, "visitors"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->mVisitors:I

    goto :goto_2
.end method


# virtual methods
.method public final isActionAllowed(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;)Z
    .locals 5
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "action"    # Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    .prologue
    .line 95
    if-nez p2, :cond_0

    const/4 v2, 0x0

    .line 132
    :goto_0
    return v2

    .line 97
    :cond_0
    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->getBitmaskValue()I

    move-result v0

    .line 99
    .local v0, "permissionToCheck":I
    if-nez p1, :cond_1

    .line 100
    const/4 v1, 0x0

    .line 131
    .local v1, "permissions":I
    :goto_1
    invoke-static {v1, v0}, Lcom/genie_connect/common/utils/BitmaskUtils;->isFlagSet(II)Z

    move-result v2

    .line 132
    .local v2, "res":Z
    goto :goto_0

    .line 102
    .end local v1    # "permissions":I
    .end local v2    # "res":Z
    :cond_1
    sget-object v3, Lcom/genie_connect/android/db/config/features/ActionsAllowed$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 127
    const/4 v1, 0x3

    .restart local v1    # "permissions":I
    goto :goto_1

    .line 104
    .end local v1    # "permissions":I
    :pswitch_0
    iget v1, p0, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->mExhibitors:I

    .line 105
    .restart local v1    # "permissions":I
    goto :goto_1

    .line 107
    .end local v1    # "permissions":I
    :pswitch_1
    iget v1, p0, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->mSpeakers:I

    .line 108
    .restart local v1    # "permissions":I
    goto :goto_1

    .line 110
    .end local v1    # "permissions":I
    :pswitch_2
    iget v1, p0, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->mProducts:I

    .line 111
    .restart local v1    # "permissions":I
    goto :goto_1

    .line 113
    .end local v1    # "permissions":I
    :pswitch_3
    iget v1, p0, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->mVisitors:I

    .line 114
    .restart local v1    # "permissions":I
    goto :goto_1

    .line 117
    .end local v1    # "permissions":I
    :pswitch_4
    iget v1, p0, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->mSessions:I

    .line 118
    .restart local v1    # "permissions":I
    goto :goto_1

    .line 121
    .end local v1    # "permissions":I
    :pswitch_5
    iget v1, p0, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->mSubsessions:I

    .line 122
    .restart local v1    # "permissions":I
    goto :goto_1

    .line 124
    .end local v1    # "permissions":I
    :pswitch_6
    iget v1, p0, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->mPois:I

    .line 125
    .restart local v1    # "permissions":I
    goto :goto_1

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
