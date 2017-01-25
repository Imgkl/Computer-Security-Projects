.class public Lcom/urbanairship/actions/ShareAction;
.super Lcom/urbanairship/actions/Action;
.source "ShareAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/actions/ShareAction$3;
    }
.end annotation


# static fields
.field public static final DEFAULT_REGISTRY_NAME:Ljava/lang/String; = "share_action"

.field public static final DEFAULT_REGISTRY_SHORT_NAME:Ljava/lang/String; = "^s"

.field private static final ignoredPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/urbanairship/actions/ShareAction$1;

    invoke-direct {v0}, Lcom/urbanairship/actions/ShareAction$1;-><init>()V

    sput-object v0, Lcom/urbanairship/actions/ShareAction;->ignoredPackages:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/urbanairship/actions/Action;-><init>()V

    .line 83
    return-void
.end method


# virtual methods
.method public acceptsArguments(Lcom/urbanairship/actions/ActionArguments;)Z
    .locals 3
    .param p1, "arguments"    # Lcom/urbanairship/actions/ActionArguments;

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-super {p0, p1}, Lcom/urbanairship/actions/Action;->acceptsArguments(Lcom/urbanairship/actions/ActionArguments;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    sget-object v1, Lcom/urbanairship/actions/ShareAction$3;->$SwitchMap$com$urbanairship$actions$Situation:[I

    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->getSituation()Lcom/urbanairship/actions/Situation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/actions/Situation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 81
    :pswitch_0
    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->getValue()Lcom/urbanairship/actions/ActionValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/actions/ActionValue;->getString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected excludePackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 144
    sget-object v0, Lcom/urbanairship/actions/ShareAction;->ignoredPackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public perform(Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;
    .locals 13
    .param p1, "arguments"    # Lcom/urbanairship/actions/ActionArguments;

    .prologue
    .line 89
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 91
    .local v1, "context":Landroid/content/Context;
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.SEND"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "text/plain"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "android.intent.extra.TEXT"

    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->getValue()Lcom/urbanairship/actions/ActionValue;

    move-result-object v12

    invoke-virtual {v12}, Lcom/urbanairship/actions/ActionValue;->getString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 96
    .local v9, "sharingIntent":Landroid/content/Intent;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v3, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 100
    .local v8, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v6, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_1

    .line 103
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 104
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 106
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/urbanairship/actions/ShareAction;->excludePackage(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 107
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 110
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 117
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 119
    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    sget v11, Lcom/urbanairship/R$string;->ua_share_dialog_title:I

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v10

    const/high16 v11, 0x10000000

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 127
    .local v0, "chooserIntent":Landroid/content/Intent;
    :goto_1
    new-instance v10, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v11, Lcom/urbanairship/actions/ShareAction$2;

    invoke-direct {v11, p0, v1, v0}, Lcom/urbanairship/actions/ShareAction$2;-><init>(Lcom/urbanairship/actions/ShareAction;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    invoke-static {}, Lcom/urbanairship/actions/ActionResult;->newEmptyResult()Lcom/urbanairship/actions/ActionResult;

    move-result-object v10

    return-object v10

    .line 122
    .end local v0    # "chooserIntent":Landroid/content/Intent;
    :cond_2
    const/4 v10, 0x0

    invoke-interface {v3, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Intent;

    sget v11, Lcom/urbanairship/R$string;->ua_share_dialog_title:I

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v11

    const-string v12, "android.intent.extra.INITIAL_INTENTS"

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Landroid/content/Intent;

    invoke-interface {v3, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/os/Parcelable;

    invoke-virtual {v11, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v10

    const/high16 v11, 0x10000000

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .restart local v0    # "chooserIntent":Landroid/content/Intent;
    goto :goto_1
.end method
