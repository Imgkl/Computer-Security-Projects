.class public Lcom/urbanairship/widget/RichPushMessageWebView;
.super Lcom/urbanairship/widget/UAWebView;
.source "RichPushMessageWebView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# instance fields
.field private currentMessage:Lcom/urbanairship/richpush/RichPushMessage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/urbanairship/widget/UAWebView;-><init>(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/widget/UAWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/urbanairship/widget/UAWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "defResStyle"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/urbanairship/widget/UAWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 68
    return-void
.end method


# virtual methods
.method public getCurrentMessage()Lcom/urbanairship/richpush/RichPushMessage;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/urbanairship/widget/RichPushMessageWebView;->currentMessage:Lcom/urbanairship/richpush/RichPushMessage;

    return-object v0
.end method

.method public loadRichPushMessage(Lcom/urbanairship/richpush/RichPushMessage;)V
    .locals 7
    .param p1, "message"    # Lcom/urbanairship/richpush/RichPushMessage;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 108
    const-string v4, "Unable to load null message into RichPushMessageWebView"

    invoke-static {v4}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 131
    :goto_0
    return-void

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/urbanairship/widget/RichPushMessageWebView;->currentMessage:Lcom/urbanairship/richpush/RichPushMessage;

    .line 114
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/UAirship;->getRichPushManager()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/richpush/RichPushManager;->getRichPushUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v3

    .line 117
    .local v3, "user":Lcom/urbanairship/richpush/RichPushUser;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-lt v4, v5, :cond_1

    .line 118
    new-instance v1, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v3}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/urbanairship/richpush/RichPushUser;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .local v1, "credentials":Lorg/apache/http/auth/UsernamePasswordCredentials;
    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lorg/apache/http/impl/auth/BasicScheme;->authenticate(Lorg/apache/http/auth/Credentials;Ljava/lang/String;Z)Lorg/apache/http/Header;

    move-result-object v0

    .line 121
    .local v0, "credentialHeader":Lorg/apache/http/Header;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v2, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {p1}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageBodyUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/urbanairship/widget/RichPushMessageWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 130
    .end local v0    # "credentialHeader":Lorg/apache/http/Header;
    .end local v1    # "credentials":Lorg/apache/http/auth/UsernamePasswordCredentials;
    .end local v2    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {p1}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageBodyUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/urbanairship/richpush/RichPushUser;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/urbanairship/widget/RichPushMessageWebView;->setClientAuthRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p1}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageBodyUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/urbanairship/widget/RichPushMessageWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method
