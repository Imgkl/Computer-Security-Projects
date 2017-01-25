.class public Lcom/urbanairship/actions/LandingPageAction;
.super Lcom/urbanairship/actions/Action;
.source "LandingPageAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/actions/LandingPageAction$3;
    }
.end annotation


# static fields
.field public static final CACHE_ON_RECEIVE_KEY:Ljava/lang/String; = "cache_on_receive"

.field public static final DEFAULT_REGISTRY_NAME:Ljava/lang/String; = "landing_page_action"

.field public static final DEFAULT_REGISTRY_SHORT_NAME:Ljava/lang/String; = "^p"

.field public static final SHOW_LANDING_PAGE_INTENT_ACTION:Ljava/lang/String; = "com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION"

.field public static final URL_KEY:Ljava/lang/String; = "url"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/urbanairship/actions/Action;-><init>()V

    .line 121
    return-void
.end method


# virtual methods
.method public acceptsArguments(Lcom/urbanairship/actions/ActionArguments;)Z
    .locals 3
    .param p1, "arguments"    # Lcom/urbanairship/actions/ActionArguments;

    .prologue
    const/4 v0, 0x0

    .line 142
    sget-object v1, Lcom/urbanairship/actions/LandingPageAction$3;->$SwitchMap$com$urbanairship$actions$Situation:[I

    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->getSituation()Lcom/urbanairship/actions/Situation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/actions/Situation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 150
    :cond_0
    :goto_0
    return v0

    .line 148
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/urbanairship/actions/LandingPageAction;->parseUri(Lcom/urbanairship/actions/ActionArguments;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected parseUri(Lcom/urbanairship/actions/ActionArguments;)Landroid/net/Uri;
    .locals 8
    .param p1, "arguments"    # Lcom/urbanairship/actions/ActionArguments;

    .prologue
    const/4 v5, 0x0

    .line 163
    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->getValue()Lcom/urbanairship/actions/ActionValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/urbanairship/actions/ActionValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 164
    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->getValue()Lcom/urbanairship/actions/ActionValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/urbanairship/actions/ActionValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v6

    const-string v7, "url"

    invoke-virtual {v6, v7}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "uriValue":Ljava/lang/String;
    :goto_0
    if-nez v4, :cond_2

    move-object v3, v5

    .line 197
    :cond_0
    :goto_1
    return-object v3

    .line 166
    .end local v4    # "uriValue":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->getValue()Lcom/urbanairship/actions/ActionValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/urbanairship/actions/ActionValue;->getString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "uriValue":Ljava/lang/String;
    goto :goto_0

    .line 174
    :cond_2
    invoke-static {v4}, Lcom/urbanairship/util/UriUtils;->parse(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v3

    .line 175
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v3, v5

    .line 176
    goto :goto_1

    .line 179
    :cond_3
    const-string v6, "u"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 182
    :try_start_0
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 188
    .local v1, "id":Ljava/lang/String;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v2

    .line 189
    .local v2, "options":Lcom/urbanairship/AirshipConfigOptions;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/urbanairship/AirshipConfigOptions;->landingPageContentURL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 193
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "options":Lcom/urbanairship/AirshipConfigOptions;
    :cond_4
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LandingPageAction - Unable to decode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    move-object v3, v5

    .line 185
    goto/16 :goto_1
.end method

.method public perform(Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;
    .locals 5
    .param p1, "arguments"    # Lcom/urbanairship/actions/ActionArguments;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/urbanairship/actions/LandingPageAction;->parseUri(Lcom/urbanairship/actions/ActionArguments;)Landroid/net/Uri;

    move-result-object v2

    .line 99
    .local v2, "uri":Landroid/net/Uri;
    sget-object v3, Lcom/urbanairship/actions/LandingPageAction$3;->$SwitchMap$com$urbanairship$actions$Situation:[I

    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->getSituation()Lcom/urbanairship/actions/Situation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/actions/Situation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 115
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v4, 0x30000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 120
    .local v0, "actionIntent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 121
    .local v1, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/urbanairship/actions/LandingPageAction$2;

    invoke-direct {v3, p0, v0}, Lcom/urbanairship/actions/LandingPageAction$2;-><init>(Lcom/urbanairship/actions/LandingPageAction;Landroid/content/Intent;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    .end local v0    # "actionIntent":Landroid/content/Intent;
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/urbanairship/actions/ActionResult;->newEmptyResult()Lcom/urbanairship/actions/ActionResult;

    move-result-object v3

    return-object v3

    .line 101
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/urbanairship/actions/LandingPageAction;->shouldCacheOnReceive(Lcom/urbanairship/actions/ActionArguments;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 104
    .restart local v1    # "handler":Landroid/os/Handler;
    new-instance v3, Lcom/urbanairship/actions/LandingPageAction$1;

    invoke-direct {v3, p0, v2}, Lcom/urbanairship/actions/LandingPageAction$1;-><init>(Lcom/urbanairship/actions/LandingPageAction;Landroid/net/Uri;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected shouldCacheOnReceive(Lcom/urbanairship/actions/ActionArguments;)Z
    .locals 3
    .param p1, "arguments"    # Lcom/urbanairship/actions/ActionArguments;

    .prologue
    const/4 v0, 0x0

    .line 209
    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->getValue()Lcom/urbanairship/actions/ActionValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/actions/ActionValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->getValue()Lcom/urbanairship/actions/ActionValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/actions/ActionValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v1

    const-string v2, "cache_on_receive"

    invoke-virtual {v1, v2}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/json/JsonValue;->getBoolean(Z)Z

    move-result v0

    .line 213
    :cond_0
    return v0
.end method
