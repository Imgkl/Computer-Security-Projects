.class public Lcom/urbanairship/actions/OpenExternalUrlAction;
.super Lcom/urbanairship/actions/Action;
.source "OpenExternalUrlAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/actions/OpenExternalUrlAction$1;
    }
.end annotation


# static fields
.field public static final DEFAULT_REGISTRY_NAME:Ljava/lang/String; = "open_external_url_action"

.field public static final DEFAULT_REGISTRY_SHORT_NAME:Ljava/lang/String; = "^u"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/urbanairship/actions/Action;-><init>()V

    .line 94
    return-void
.end method


# virtual methods
.method public acceptsArguments(Lcom/urbanairship/actions/ActionArguments;)Z
    .locals 3
    .param p1, "arguments"    # Lcom/urbanairship/actions/ActionArguments;

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-super {p0, p1}, Lcom/urbanairship/actions/Action;->acceptsArguments(Lcom/urbanairship/actions/ActionArguments;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    sget-object v1, Lcom/urbanairship/actions/OpenExternalUrlAction$1;->$SwitchMap$com$urbanairship$actions$Situation:[I

    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->getSituation()Lcom/urbanairship/actions/Situation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/actions/Situation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 92
    :pswitch_0
    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->getValue()Lcom/urbanairship/actions/ActionValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/actions/ActionValue;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/util/UriUtils;->parse(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public perform(Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;
    .locals 4
    .param p1, "arguments"    # Lcom/urbanairship/actions/ActionArguments;

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->getValue()Lcom/urbanairship/actions/ActionValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/actions/ActionValue;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/util/UriUtils;->parse(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v1

    .line 65
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->getValue()Lcom/urbanairship/actions/ActionValue;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/actions/ActionResult;->newResult(Lcom/urbanairship/actions/ActionValue;)Lcom/urbanairship/actions/ActionResult;

    move-result-object v2

    return-object v2
.end method
