.class public Lcom/eventgenie/android/utils/intents/IntentFactory;
.super Ljava/lang/Object;
.source "IntentFactory.java"


# static fields
.field private static final HTTPS_SCHEMA:Ljava/lang/String; = "https://"

.field private static final HTTP_SCHEMA:Ljava/lang/String; = "http://"

.field private static final MAILTO_SCHEMA:Ljava/lang/String; = "mailto:"

.field private static final RTSP_SCHEMA:Ljava/lang/String; = "rtsp://"

.field private static final TEL_SCHEMA:Ljava/lang/String; = "tel:"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mTokenReplacer:Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/eventgenie/android/utils/intents/IntentFactory;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method private declared-synchronized doTokenReplacement(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/intents/IntentFactory;->mTokenReplacer:Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;

    iget-object v1, p0, Lcom/eventgenie/android/utils/intents/IntentFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eventgenie/android/utils/intents/IntentFactory;->mTokenReplacer:Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/intents/IntentFactory;->mTokenReplacer:Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;

    invoke-virtual {v0, p1}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replaceTokens(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static isHttpUrl(Ljava/lang/String;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 349
    invoke-static {p0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 358
    :cond_0
    :goto_0
    return v0

    .line 353
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static newEmailIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 4
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "cc"    # Ljava/lang/String;

    .prologue
    .line 362
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string v1, "android.intent.extra.CC"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const-string v1, "message/rfc822"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    new-instance v1, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v1, v0}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    return-object v1
.end method


# virtual methods
.method public getContactDetailsIntent(Landroid/view/View;)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v1, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v1}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>()V

    .line 131
    .local v1, "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :goto_0
    return-object v1

    .line 85
    .end local v1    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_0
    instance-of v4, p1, Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 86
    new-instance v1, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v1}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>()V

    .restart local v1    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_0

    .line 89
    .end local v1    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_1
    const/4 v3, 0x0

    .local v3, "payload":Ljava/lang/String;
    move-object v4, p1

    .line 90
    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 92
    new-instance v1, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v1}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>()V

    .restart local v1    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_0

    .line 95
    .end local v1    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/eventgenie/android/utils/intents/IntentFactory;->doTokenReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ INTENT: Parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 100
    .local v0, "id":I
    invoke-static {v3}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 101
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getViewIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    .restart local v1    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_0

    .line 103
    .end local v1    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_3
    sget v4, Lcom/eventgenie/android/R$id;->phone:I

    if-eq v0, v4, :cond_4

    sget v4, Lcom/eventgenie/android/R$id;->phone2:I

    if-eq v0, v4, :cond_4

    sget v4, Lcom/eventgenie/android/R$id;->fax:I

    if-ne v0, v4, :cond_5

    .line 104
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "numberToDial":Ljava/lang/String;
    new-instance v1, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.DIAL"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {v1, v4}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    .line 106
    .restart local v1    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto/16 :goto_0

    .end local v1    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v2    # "numberToDial":Ljava/lang/String;
    :cond_5
    sget v4, Lcom/eventgenie/android/R$id;->linkedin:I

    if-ne v0, v4, :cond_6

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://www.linkedin.com/in/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getViewIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    .restart local v1    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto/16 :goto_0

    .line 108
    .end local v1    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_6
    sget v4, Lcom/eventgenie/android/R$id;->facebook:I

    if-ne v0, v4, :cond_7

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://www.facebook.com/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getViewIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    .restart local v1    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto/16 :goto_0

    .line 110
    .end local v1    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_7
    sget v4, Lcom/eventgenie/android/R$id;->youtube:I

    if-ne v0, v4, :cond_8

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://www.youtube.com/user/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getViewIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    .restart local v1    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto/16 :goto_0

    .line 112
    .end local v1    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_8
    sget v4, Lcom/eventgenie/android/R$id;->twitter:I

    if-ne v0, v4, :cond_9

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://twitter.com/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getViewIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    .restart local v1    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto/16 :goto_0

    .line 114
    .end local v1    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_9
    sget v4, Lcom/eventgenie/android/R$id;->email:I

    if-ne v0, v4, :cond_a

    .line 115
    invoke-virtual {p0, v3}, Lcom/eventgenie/android/utils/intents/IntentFactory;->newEmailIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    .restart local v1    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto/16 :goto_0

    .line 116
    .end local v1    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_a
    sget v4, Lcom/eventgenie/android/R$id;->blog:I

    if-eq v0, v4, :cond_b

    sget v4, Lcom/eventgenie/android/R$id;->web:I

    if-ne v0, v4, :cond_d

    .line 117
    :cond_b
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getViewIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    .restart local v1    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto/16 :goto_0

    .line 120
    .end local v1    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_c
    new-instance v1, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v1}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>()V

    .restart local v1    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto/16 :goto_0

    .line 122
    .end local v1    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_d
    sget v4, Lcom/eventgenie/android/R$id;->address:I

    if-eq v0, v4, :cond_e

    sget v4, Lcom/eventgenie/android/R$id;->location:I

    if-ne v0, v4, :cond_f

    .line 123
    :cond_e
    invoke-virtual {p0, v3}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getMapsIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    .restart local v1    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto/16 :goto_0

    .line 125
    .end local v1    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_f
    new-instance v1, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v1}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>()V

    .restart local v1    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto/16 :goto_0
.end method

.method public getInAppBrowserIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-static {p1}, Lcom/eventgenie/android/utils/intents/IntentFactory;->isHttpUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 138
    new-instance v2, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v2}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>()V

    .line 152
    .local v2, "navigationResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :goto_0
    return-object v2

    .line 140
    .end local v2    # "navigationResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_0
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/intents/IntentFactory;->doTokenReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 142
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/eventgenie/android/utils/intents/IntentFactory;->mContext:Landroid/content/Context;

    const-class v4, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "remote_html"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v3, "infopage_type"

    const-string/jumbo v4, "web"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 149
    new-instance v2, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v2, v1}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    .restart local v2    # "navigationResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_0
.end method

.method public getMapDirectionsIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://maps.google.com/maps?f=d&daddr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.apps.maps"

    const-string v3, "com.google.android.maps.MapsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 160
    new-instance v1, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v1, v0}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    return-object v1
.end method

.method public getMapsIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    const/4 v2, 0x0

    .line 172
    :goto_0
    return-object v2

    .line 168
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "geo:0,0?q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, "+"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ INTENT: Getting maps intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 171
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 172
    new-instance v2, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v2, v0}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public getMarketIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "marketIntent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 178
    new-instance v1, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v1, v0}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    return-object v1
.end method

.method public getOpenIntent(Lcom/eventgenie/android/utils/social/rss/RssItem;Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 3
    .param p1, "item"    # Lcom/eventgenie/android/utils/social/rss/RssItem;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getContentUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/eventgenie/android/utils/intents/IntentFactory;->mContext:Landroid/content/Context;

    const-class v2, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "rss_item"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 197
    if-eqz p2, :cond_0

    .line 198
    const-string v1, "rss_thumb"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    :cond_0
    :goto_0
    new-instance v1, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v1, v0}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    :goto_1
    return-object v1

    .line 200
    :cond_1
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getContentUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/eventgenie/android/utils/intents/IntentFactory;->mContext:Landroid/content/Context;

    const-class v2, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "extra_rss_item"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 207
    if-eqz p2, :cond_0

    .line 208
    const-string v1, "rss_thumb"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getContentUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getContentUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rtsp://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getLink()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getLink()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getViewIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    goto :goto_1

    .line 217
    :cond_3
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getContentUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getViewIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    goto :goto_1
.end method

.method public getRawViewIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 225
    const/4 v2, 0x0

    .line 228
    .local v2, "navigationResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 229
    new-instance v3, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v3}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>()V

    .line 244
    :goto_0
    return-object v3

    .line 231
    :cond_0
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/intents/IntentFactory;->doTokenReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 235
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 238
    new-instance v2, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    .end local v2    # "navigationResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-direct {v2, v1}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "navigationResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :goto_1
    move-object v3, v2

    .line 244
    goto :goto_0

    .line 239
    .end local v2    # "navigationResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ INTENT FACTORY: Error creating Raw View intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 241
    new-instance v2, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v2}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>()V

    .restart local v2    # "navigationResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_1
.end method

.method public getViewIntent(Lcom/eventgenie/android/utils/social/rss/RssItem;)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 3
    .param p1, "item"    # Lcom/eventgenie/android/utils/social/rss/RssItem;

    .prologue
    .line 258
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getContentUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getContentUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rtsp://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getLink()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getLink()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getLink()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getViewIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    .line 271
    .local v0, "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :goto_0
    return-object v0

    .line 265
    .end local v0    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_0
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getContentUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getViewIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    .restart local v0    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_0

    .line 268
    .end local v0    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_1
    new-instance v0, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>()V

    .restart local v0    # "methodResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_0
.end method

.method public getViewIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getViewIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    return-object v0
.end method

.method public getViewIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 279
    const/4 v3, 0x0

    .line 281
    .local v3, "navigationResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 282
    new-instance v4, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v4}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>()V

    .line 312
    :goto_0
    return-object v4

    .line 284
    :cond_0
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/intents/IntentFactory;->doTokenReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 287
    invoke-static {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentUtils;->isThisValidGenieIntentUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 288
    invoke-static {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->fromUrl(Ljava/lang/String;)Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    move-result-object v1

    .line 289
    .local v1, "genieIntent":Lcom/eventgenie/android/utils/genieintent/GenieIntent;
    iget-object v4, p0, Lcom/eventgenie/android/utils/intents/IntentFactory;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResolver;->resolveIntent(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/GenieIntent;)Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->getNavigationResult()Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v3

    .end local v1    # "genieIntent":Lcom/eventgenie/android/utils/genieintent/GenieIntent;
    :goto_1
    move-object v4, v3

    .line 312
    goto :goto_0

    .line 294
    :cond_1
    :try_start_0
    invoke-static {p2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "web"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "mobile"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 299
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    :goto_2
    new-instance v3, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    .end local v3    # "navigationResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-direct {v3, v2}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    .restart local v3    # "navigationResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_1

    .line 302
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 306
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "navigationResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ INTENT FACTORY: Error creating View intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 308
    new-instance v3, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v3}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>()V

    .restart local v3    # "navigationResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_1
.end method

.method public newDialIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 373
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 375
    new-instance v1, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v1, v0}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    return-object v1
.end method

.method public newEmailIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 8
    .param p1, "emailString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 316
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 317
    new-instance v1, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    check-cast v3, Landroid/content/Intent;

    invoke-direct {v1, v3}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    .line 334
    :goto_0
    return-object v1

    .line 319
    :cond_0
    const/4 v1, 0x0

    .line 322
    .local v1, "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :try_start_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mailto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 323
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mailto:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 326
    :cond_1
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/intents/IntentFactory;->doTokenReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 328
    invoke-static {p1}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object v2

    .line 329
    .local v2, "mt":Landroid/net/MailTo;
    invoke-virtual {v2}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/MailTo;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/MailTo;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/MailTo;->getCc()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/eventgenie/android/utils/intents/IntentFactory;->newEmailIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 330
    .end local v2    # "mt":Landroid/net/MailTo;
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    .end local v1    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    check-cast v3, Landroid/content/Intent;

    invoke-direct {v1, v3}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    .restart local v1    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_0
.end method
