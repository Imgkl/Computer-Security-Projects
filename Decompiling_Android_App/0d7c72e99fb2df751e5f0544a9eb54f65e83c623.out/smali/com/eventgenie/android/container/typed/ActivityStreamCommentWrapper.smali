.class public Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper;
.super Ljava/lang/Object;
.source "ActivityStreamCommentWrapper.java"

# interfaces
.implements Lcom/eventgenie/android/container/EntityWrapper;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEntity:Lcom/genie_connect/common/db/model/ActivityStreamComment;

.field private final mOwnedByCurrentUser:Z


# direct methods
.method public constructor <init>(Lcom/genie_connect/common/db/model/ActivityStreamComment;Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Landroid/content/Context;)V
    .locals 6
    .param p1, "entity"    # Lcom/genie_connect/common/db/model/ActivityStreamComment;
    .param p2, "currentVisitor"    # Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper;->mEntity:Lcom/genie_connect/common/db/model/ActivityStreamComment;

    .line 62
    iput-object p3, p0, Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper;->mContext:Landroid/content/Context;

    .line 64
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper;->mEntity:Lcom/genie_connect/common/db/model/ActivityStreamComment;

    iget-object v1, v1, Lcom/genie_connect/common/db/model/ActivityStreamComment;->author_visitor:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {p2}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper;->mEntity:Lcom/genie_connect/common/db/model/ActivityStreamComment;

    iget-object v1, v1, Lcom/genie_connect/common/db/model/ActivityStreamComment;->author_visitor:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper;->mOwnedByCurrentUser:Z

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_1
    iput-boolean v0, p0, Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper;->mOwnedByCurrentUser:Z

    goto :goto_0
.end method


# virtual methods
.method public allowDelete()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper;->mOwnedByCurrentUser:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public generateDetailsIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntityType()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ACTIVITYSTREAMCOMMENT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method

.method public getFullDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper;->mEntity:Lcom/genie_connect/common/db/model/ActivityStreamComment;

    iget-object v0, v0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper;->mEntity:Lcom/genie_connect/common/db/model/ActivityStreamComment;

    invoke-virtual {v0}, Lcom/genie_connect/common/db/model/ActivityStreamComment;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper;->mEntity:Lcom/genie_connect/common/db/model/ActivityStreamComment;

    iget-object v0, v0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->author_imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicatorColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListModifier()Lcom/genie_connect/android/db/config/features/GmListModifier;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper$1;-><init>(Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper;)V

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMiddleLeftRowValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper;->mEntity:Lcom/genie_connect/common/db/model/ActivityStreamComment;

    iget-object v0, v0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->timestamp:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/eventgenie/android/utils/social/StatusDateUtils;->getInstance(Landroid/content/Context;)Lcom/eventgenie/android/utils/social/StatusDateUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper;->mEntity:Lcom/genie_connect/common/db/model/ActivityStreamComment;

    iget-object v1, v1, Lcom/genie_connect/common/db/model/ActivityStreamComment;->timestamp:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/eventgenie/android/utils/social/StatusDateUtils;->getTimeDiffString(J)Ljava/lang/String;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMiddleRightRowValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper;->mEntity:Lcom/genie_connect/common/db/model/ActivityStreamComment;

    iget-object v0, v0, Lcom/genie_connect/common/db/model/ActivityStreamComment;->author_name:Ljava/lang/String;

    return-object v0
.end method

.method public hasNote()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public isBookmarked()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public isFavourite()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public isFeatured()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public limitDescription()Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method
