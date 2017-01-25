.class public final Lcom/genie_connect/android/db/config/features/NetworkingFeatures;
.super Lcom/genie_connect/android/db/config/features/BaseFeatures;
.source "NetworkingFeatures.java"


# static fields
.field private static final DEFAULT_MEETING_DURATION:I = 0x1e


# instance fields
.field private final mAllowAdHocMeetings:Z

.field private final mEnableMeetings:Z

.field private final mEnableMessages:Z

.field private final mMeetingDuration:I

.field private final mMeetingsV2:Z

.field private final mReadOnlyMeetingLocation:Z

.field private final mShowAddress:Z

.field private final mShowBlogUrl:Z

.field private final mShowCompanyName:Z

.field private final mShowDepartment:Z

.field private final mShowEmail:Z

.field private final mShowFacebook:Z

.field private final mShowFax:Z

.field private final mShowFullDescription:Z

.field private final mShowInterests:Z

.field private final mShowJobTitle:Z

.field private final mShowLinkedIn:Z

.field private final mShowMugShot:Z

.field private final mShowName:Z

.field private final mShowReasonForAttening:Z

.field private final mShowTelephone:Z

.field private final mShowTelephone2:Z

.field private final mShowTwitter:Z

.field private final mShowVisitorGroup:Z

.field private final mShowWww:Z

.field private final mShowYouTubeUrl:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;J)V
    .locals 7
    .param p1, "featuresObject"    # Lorg/json/JSONObject;
    .param p2, "findPeopleObject"    # Lorg/json/JSONObject;
    .param p3, "namespace"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 72
    const-string v1, "features_networking"

    invoke-direct {p0, v1, p1}, Lcom/genie_connect/android/db/config/features/BaseFeatures;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 74
    if-eqz p1, :cond_1

    .line 75
    const-wide/32 v4, 0x24ce04

    cmp-long v1, p3, v4

    if-nez v1, :cond_0

    .line 76
    iput-boolean v3, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mMeetingsV2:Z

    .line 81
    :goto_0
    const-string v1, "meetingDuration"

    const/16 v4, 0x1e

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mMeetingDuration:I

    .line 82
    const-string v1, "allowAdHocMeetings"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mAllowAdHocMeetings:Z

    .line 93
    :goto_1
    if-eqz p1, :cond_2

    .line 94
    move-object v0, p1

    .line 104
    .local v0, "usedObject":Lorg/json/JSONObject;
    :goto_2
    const-string v1, "enableMeetings"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mEnableMeetings:Z

    .line 105
    const-string v1, "enableMessages"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mEnableMessages:Z

    .line 106
    const-string v1, "readOnlyMeetingLocation"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mReadOnlyMeetingLocation:Z

    .line 108
    iget-boolean v1, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mMeetingsV2:Z

    if-nez v1, :cond_5

    .line 109
    const-string v1, "showVisitorType"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowVisitorGroup:Z

    .line 114
    :goto_4
    const-string v1, "showFullDescription"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_7

    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowFullDescription:Z

    .line 115
    const-string v1, "showReasonForAttending"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_8

    move v1, v2

    :goto_6
    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowReasonForAttening:Z

    .line 116
    const-string v1, "showName"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_9

    move v1, v2

    :goto_7
    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowName:Z

    .line 117
    const-string v1, "showCompanyName"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_a

    move v1, v2

    :goto_8
    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowCompanyName:Z

    .line 118
    const-string v1, "showDepartment"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_b

    move v1, v2

    :goto_9
    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowDepartment:Z

    .line 119
    const-string v1, "showJobTitle"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_c

    move v1, v2

    :goto_a
    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowJobTitle:Z

    .line 120
    const-string v1, "showMugShot"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_d

    move v1, v2

    :goto_b
    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowMugShot:Z

    .line 121
    const-string v1, "showAddress"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_e

    move v1, v2

    :goto_c
    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowAddress:Z

    .line 122
    const-string v1, "showTelephone"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_f

    move v1, v2

    :goto_d
    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowTelephone:Z

    .line 123
    const-string v1, "showTelephone2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_10

    move v1, v2

    :goto_e
    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowTelephone2:Z

    .line 124
    const-string v1, "showFax"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_11

    move v1, v2

    :goto_f
    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowFax:Z

    .line 125
    const-string v1, "showEmail"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_12

    move v1, v2

    :goto_10
    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowEmail:Z

    .line 126
    const-string v1, "showWww"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_13

    move v1, v2

    :goto_11
    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowWww:Z

    .line 127
    const-string v1, "showBlogUrl"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_14

    move v1, v2

    :goto_12
    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowBlogUrl:Z

    .line 128
    const-string v1, "showYouTubeUrl"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_15

    move v1, v2

    :goto_13
    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowYouTubeUrl:Z

    .line 129
    const-string v1, "showLinkedIn"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_16

    move v1, v2

    :goto_14
    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowLinkedIn:Z

    .line 130
    const-string v1, "showFacebook"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_17

    move v1, v2

    :goto_15
    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowFacebook:Z

    .line 131
    const-string v1, "showTwitter"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_18

    move v1, v2

    :goto_16
    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowTwitter:Z

    .line 132
    const-string v1, "showInterests"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_19

    :goto_17
    iput-boolean v2, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowInterests:Z

    .line 133
    return-void

    .line 78
    .end local v0    # "usedObject":Lorg/json/JSONObject;
    :cond_0
    const-string v1, "meetingsV2"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mMeetingsV2:Z

    goto/16 :goto_0

    .line 84
    :cond_1
    iput-boolean v3, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mMeetingsV2:Z

    .line 85
    const/4 v1, -0x1

    iput v1, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mMeetingDuration:I

    .line 86
    iput-boolean v3, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mAllowAdHocMeetings:Z

    goto/16 :goto_1

    .line 96
    :cond_2
    if-nez p2, :cond_3

    .line 97
    const-string v1, "^ CONFIGNETFEATURES: Find People Config is null!"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 98
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .restart local v0    # "usedObject":Lorg/json/JSONObject;
    goto/16 :goto_2

    .line 100
    .end local v0    # "usedObject":Lorg/json/JSONObject;
    :cond_3
    move-object v0, p2

    .restart local v0    # "usedObject":Lorg/json/JSONObject;
    goto/16 :goto_2

    :cond_4
    move v1, v3

    .line 109
    goto/16 :goto_3

    .line 111
    :cond_5
    const-string v1, "showVisitorGroup"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_6

    move v1, v2

    :goto_18
    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowVisitorGroup:Z

    goto/16 :goto_4

    :cond_6
    move v1, v3

    goto :goto_18

    :cond_7
    move v1, v3

    .line 114
    goto/16 :goto_5

    :cond_8
    move v1, v3

    .line 115
    goto/16 :goto_6

    :cond_9
    move v1, v3

    .line 116
    goto/16 :goto_7

    :cond_a
    move v1, v3

    .line 117
    goto/16 :goto_8

    :cond_b
    move v1, v3

    .line 118
    goto/16 :goto_9

    :cond_c
    move v1, v3

    .line 119
    goto/16 :goto_a

    :cond_d
    move v1, v3

    .line 120
    goto/16 :goto_b

    :cond_e
    move v1, v3

    .line 121
    goto/16 :goto_c

    :cond_f
    move v1, v3

    .line 122
    goto/16 :goto_d

    :cond_10
    move v1, v3

    .line 123
    goto/16 :goto_e

    :cond_11
    move v1, v3

    .line 124
    goto/16 :goto_f

    :cond_12
    move v1, v3

    .line 125
    goto/16 :goto_10

    :cond_13
    move v1, v3

    .line 126
    goto/16 :goto_11

    :cond_14
    move v1, v3

    .line 127
    goto/16 :goto_12

    :cond_15
    move v1, v3

    .line 128
    goto/16 :goto_13

    :cond_16
    move v1, v3

    .line 129
    goto/16 :goto_14

    :cond_17
    move v1, v3

    .line 130
    goto :goto_15

    :cond_18
    move v1, v3

    .line 131
    goto :goto_16

    :cond_19
    move v2, v3

    .line 132
    goto :goto_17
.end method


# virtual methods
.method public getPlaceholderAssetId()I
    .locals 1

    .prologue
    .line 141
    sget v0, Lcom/eventgenie/android/R$drawable;->profile_placeholder:I

    return v0
.end method

.method public getmMeetingDuration()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mMeetingDuration:I

    return v0
.end method

.method public isAllowAdHocMeetings()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mAllowAdHocMeetings:Z

    return v0
.end method

.method public isEnableMeetings()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mEnableMeetings:Z

    return v0
.end method

.method public isEnableMessages()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mEnableMessages:Z

    return v0
.end method

.method public isFieldVisible(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 159
    const-string v1, "linkedIn"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowLinkedIn()Z

    move-result v0

    .line 224
    .local v0, "res":Z
    :goto_0
    return v0

    .line 162
    .end local v0    # "res":Z
    :cond_0
    const-string/jumbo v1, "twitter"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowTwitter()Z

    move-result v0

    .restart local v0    # "res":Z
    goto :goto_0

    .line 165
    .end local v0    # "res":Z
    :cond_1
    const-string/jumbo v1, "youtubeUrl"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowYouTubeUrl()Z

    move-result v0

    .restart local v0    # "res":Z
    goto :goto_0

    .line 168
    .end local v0    # "res":Z
    :cond_2
    const-string v1, "fax"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 169
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowFax()Z

    move-result v0

    .restart local v0    # "res":Z
    goto :goto_0

    .line 171
    .end local v0    # "res":Z
    :cond_3
    const-string v1, "facebook"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 172
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowFacebook()Z

    move-result v0

    .restart local v0    # "res":Z
    goto :goto_0

    .line 174
    .end local v0    # "res":Z
    :cond_4
    const-string v1, "blogUrl"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 175
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowBlogUrl()Z

    move-result v0

    .restart local v0    # "res":Z
    goto :goto_0

    .line 177
    .end local v0    # "res":Z
    :cond_5
    const-string/jumbo v1, "telephone"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 178
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowTelephone()Z

    move-result v0

    .restart local v0    # "res":Z
    goto :goto_0

    .line 180
    .end local v0    # "res":Z
    :cond_6
    const-string/jumbo v1, "telephone2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 181
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowTelephone2()Z

    move-result v0

    .restart local v0    # "res":Z
    goto :goto_0

    .line 183
    .end local v0    # "res":Z
    :cond_7
    const-string/jumbo v1, "www"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 184
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowWww()Z

    move-result v0

    .restart local v0    # "res":Z
    goto :goto_0

    .line 186
    .end local v0    # "res":Z
    :cond_8
    const-string v1, "email"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 187
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowEmail()Z

    move-result v0

    .restart local v0    # "res":Z
    goto :goto_0

    .line 189
    .end local v0    # "res":Z
    :cond_9
    const-string v1, "reasonForAttending"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 190
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowReasonForAttening()Z

    move-result v0

    .restart local v0    # "res":Z
    goto/16 :goto_0

    .line 192
    .end local v0    # "res":Z
    :cond_a
    const-string v1, "fullDescription"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 193
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowFullDescription()Z

    move-result v0

    .restart local v0    # "res":Z
    goto/16 :goto_0

    .line 195
    .end local v0    # "res":Z
    :cond_b
    const-string v1, "name"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 196
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowName()Z

    move-result v0

    .restart local v0    # "res":Z
    goto/16 :goto_0

    .line 198
    .end local v0    # "res":Z
    :cond_c
    const-string v1, "address"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 199
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowAddress()Z

    move-result v0

    .restart local v0    # "res":Z
    goto/16 :goto_0

    .line 201
    .end local v0    # "res":Z
    :cond_d
    const-string v1, "mugShotUrl"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 202
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowMugShot()Z

    move-result v0

    .restart local v0    # "res":Z
    goto/16 :goto_0

    .line 204
    .end local v0    # "res":Z
    :cond_e
    const-string v1, "department"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 205
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowDepartment()Z

    move-result v0

    .restart local v0    # "res":Z
    goto/16 :goto_0

    .line 207
    .end local v0    # "res":Z
    :cond_f
    const-string v1, "interests"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 208
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowInterests()Z

    move-result v0

    .restart local v0    # "res":Z
    goto/16 :goto_0

    .line 210
    .end local v0    # "res":Z
    :cond_10
    const-string v1, "companyName"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 211
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowCompanyName()Z

    move-result v0

    .restart local v0    # "res":Z
    goto/16 :goto_0

    .line 213
    .end local v0    # "res":Z
    :cond_11
    const-string v1, "jobTitle"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 214
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowJobTitle()Z

    move-result v0

    .restart local v0    # "res":Z
    goto/16 :goto_0

    .line 216
    .end local v0    # "res":Z
    :cond_12
    const-string/jumbo v1, "visitorType"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 217
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isShowVisitorGroup()Z

    move-result v0

    .restart local v0    # "res":Z
    goto/16 :goto_0

    .line 220
    .end local v0    # "res":Z
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ CONFIGNETFEATURES: Visibility Request for unknown field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x1

    .restart local v0    # "res":Z
    goto/16 :goto_0
.end method

.method public isMeetingsV2()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnlyMeetingLocation()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mReadOnlyMeetingLocation:Z

    return v0
.end method

.method public isShowAddress()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowAddress:Z

    return v0
.end method

.method public isShowBlogUrl()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowBlogUrl:Z

    return v0
.end method

.method public isShowCompanyName()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowCompanyName:Z

    return v0
.end method

.method public isShowDepartment()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowDepartment:Z

    return v0
.end method

.method public isShowEmail()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowEmail:Z

    return v0
.end method

.method public isShowFacebook()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowFacebook:Z

    return v0
.end method

.method public isShowFax()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowFax:Z

    return v0
.end method

.method public isShowFullDescription()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowFullDescription:Z

    return v0
.end method

.method public isShowInterests()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowInterests:Z

    return v0
.end method

.method public isShowJobTitle()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowJobTitle:Z

    return v0
.end method

.method public isShowLinkedIn()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowLinkedIn:Z

    return v0
.end method

.method public isShowMugShot()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowMugShot:Z

    return v0
.end method

.method public isShowName()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowName:Z

    return v0
.end method

.method public isShowReasonForAttening()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowReasonForAttening:Z

    return v0
.end method

.method public isShowTelephone()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowTelephone:Z

    return v0
.end method

.method public isShowTelephone2()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowTelephone2:Z

    return v0
.end method

.method public isShowTwitter()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowTwitter:Z

    return v0
.end method

.method public isShowVisitorGroup()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowVisitorGroup:Z

    return v0
.end method

.method public isShowWww()Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowWww:Z

    return v0
.end method

.method public isShowYouTubeUrl()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->mShowYouTubeUrl:Z

    return v0
.end method
