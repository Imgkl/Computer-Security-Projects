.class public Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;
.super Ljava/lang/Object;
.source "TwitterAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimelineEntryWrapper"
.end annotation


# instance fields
.field private authorName:Landroid/widget/TextView;

.field private authorTwitterName:Landroid/widget/TextView;

.field private avatar:Landroid/widget/ImageView;

.field private btnTwitterFavourite:Landroid/widget/ImageButton;

.field private btnTwitterReply:Landroid/widget/ImageButton;

.field private btnTwitterRetweet:Landroid/widget/ImageButton;

.field private createdAt:Landroid/widget/TextView;

.field private mTweetInfo:Landroid/view/View;

.field private row:Landroid/view/View;

.field private s:Lcom/eventgenie/android/utils/social/twitter/Tweet;

.field private status:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter;Landroid/view/View;Lcom/eventgenie/android/utils/social/twitter/Tweet;)V
    .locals 1
    .param p2, "row"    # Landroid/view/View;
    .param p3, "s"    # Lcom/eventgenie/android/utils/social/twitter/Tweet;

    .prologue
    const/4 v0, 0x0

    .line 94
    iput-object p1, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->this$0:Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->createdAt:Landroid/widget/TextView;

    .line 83
    iput-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->status:Landroid/widget/TextView;

    .line 84
    iput-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->avatar:Landroid/widget/ImageView;

    .line 85
    iput-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->authorName:Landroid/widget/TextView;

    .line 86
    iput-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->authorTwitterName:Landroid/widget/TextView;

    .line 87
    iput-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->btnTwitterFavourite:Landroid/widget/ImageButton;

    .line 88
    iput-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->btnTwitterReply:Landroid/widget/ImageButton;

    .line 89
    iput-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->btnTwitterRetweet:Landroid/widget/ImageButton;

    .line 90
    iput-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->row:Landroid/view/View;

    .line 91
    iput-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->mTweetInfo:Landroid/view/View;

    .line 92
    iput-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->s:Lcom/eventgenie/android/utils/social/twitter/Tweet;

    .line 95
    iput-object p2, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->row:Landroid/view/View;

    .line 96
    iput-object p3, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->s:Lcom/eventgenie/android/utils/social/twitter/Tweet;

    .line 97
    return-void
.end method

.method private getAuthorName()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->authorName:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->authorName:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->authorName:Landroid/widget/TextView;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->authorName:Landroid/widget/TextView;

    return-object v0
.end method

.method private getAuthorTweeterName()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->authorTwitterName:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->authorTwitterName:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->authorTwitterName:Landroid/widget/TextView;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->authorTwitterName:Landroid/widget/TextView;

    return-object v0
.end method

.method private getAvatar()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->avatar:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->avatar:Landroid/widget/ImageView;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->avatar:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getButtonFavourite()Landroid/widget/ImageButton;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->btnTwitterFavourite:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->btn_twitter_favourite:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->btnTwitterFavourite:Landroid/widget/ImageButton;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->btnTwitterFavourite:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private getButtonReply()Landroid/widget/ImageButton;
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->btnTwitterReply:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->btn_twitter_reply:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->btnTwitterReply:Landroid/widget/ImageButton;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->btnTwitterReply:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private getButtonRetweet()Landroid/widget/ImageButton;
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->btnTwitterRetweet:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->btn_twitter_retweet:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->btnTwitterRetweet:Landroid/widget/ImageButton;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->btnTwitterRetweet:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private getCreatedAt()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->createdAt:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->created_at:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->createdAt:Landroid/widget/TextView;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->createdAt:Landroid/widget/TextView;

    return-object v0
.end method

.method private getStatus()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->status:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->status:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->status:Landroid/widget/TextView;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->status:Landroid/widget/TextView;

    return-object v0
.end method

.method private getTweetInfo()Landroid/view/View;
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->mTweetInfo:Landroid/view/View;

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->tweetInfo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->mTweetInfo:Landroid/view/View;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->mTweetInfo:Landroid/view/View;

    return-object v0
.end method

.method private getViewIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ TWITTERADAPTER: Opening URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 192
    new-instance v1, Lcom/eventgenie/android/utils/intents/IntentFactory;

    iget-object v2, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->this$0:Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter;

    invoke-virtual {v2}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getViewIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    .line 197
    .local v0, "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :goto_0
    return-object v0

    .line 194
    .end local v0    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_0
.end method


# virtual methods
.method public getUrlForFavourite()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->s:Lcom/eventgenie/android/utils/social/twitter/Tweet;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/managers/TwitterManager;->getWebIntentForFavourite(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrlForReply()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->s:Lcom/eventgenie/android/utils/social/twitter/Tweet;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/managers/TwitterManager;->getWebIntentForReply(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrlForRetweet()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->s:Lcom/eventgenie/android/utils/social/twitter/Tweet;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/managers/TwitterManager;->getWebIntentForRetweet(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrlForTweet()Ljava/lang/String;
    .locals 4

    .prologue
    .line 180
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->s:Lcom/eventgenie/android/utils/social/twitter/Tweet;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getUserName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->s:Lcom/eventgenie/android/utils/social/twitter/Tweet;

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/eventgenie/android/utils/managers/TwitterManager;->getWebIntentForTweetView(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrlForUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->s:Lcom/eventgenie/android/utils/social/twitter/Tweet;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/managers/TwitterManager;->getWebIntentForUserView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 204
    .local v0, "viewId":I
    sget v1, Lcom/eventgenie/android/R$id;->btn_twitter_retweet:I

    if-ne v1, v0, :cond_1

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->getUrlForRetweet()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->getViewIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    sget v1, Lcom/eventgenie/android/R$id;->btn_twitter_reply:I

    if-ne v1, v0, :cond_2

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->getUrlForReply()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->getViewIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto :goto_0

    .line 210
    :cond_2
    sget v1, Lcom/eventgenie/android/R$id;->btn_twitter_favourite:I

    if-ne v1, v0, :cond_3

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->getUrlForFavourite()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->getViewIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto :goto_0

    .line 213
    :cond_3
    sget v1, Lcom/eventgenie/android/R$id;->avatar:I

    if-eq v1, v0, :cond_4

    sget v1, Lcom/eventgenie/android/R$id;->tweetInfo:I

    if-ne v1, v0, :cond_0

    .line 214
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->getUrlForUser()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->getViewIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto :goto_0
.end method

.method populateFrom(Lcom/eventgenie/android/utils/social/twitter/Tweet;)V
    .locals 3
    .param p1, "s"    # Lcom/eventgenie/android/utils/social/twitter/Tweet;

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->getCreatedAt()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getCreatedAt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->getAuthorName()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getUserName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->getAuthorTweeterName()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :goto_0
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->getStatus()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->getButtonReply()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->getButtonRetweet()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->getButtonFavourite()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->getAvatar()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->getTweetInfo()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->getAvatar()Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getProfileImageUrl()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 244
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getProfileImageUrl()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->getAvatar()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 248
    :goto_1
    return-void

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->getAuthorTweeterName()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 230
    :cond_1
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->getAuthorTweeterName()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 246
    :cond_2
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-direct {p0}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->getAvatar()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    goto :goto_1
.end method
