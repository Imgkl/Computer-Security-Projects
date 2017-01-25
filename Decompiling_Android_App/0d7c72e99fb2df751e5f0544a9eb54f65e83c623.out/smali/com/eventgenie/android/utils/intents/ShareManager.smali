.class public Lcom/eventgenie/android/utils/intents/ShareManager;
.super Ljava/lang/Object;
.source "ShareManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;
    }
.end annotation


# static fields
.field public static final GC_EXTRA_ENTITY:Ljava/lang/String; = "genie_entity"

.field public static final GC_EXTRA_ID:Ljava/lang/String; = "genie_id"

.field public static final TYPE_TEXT_PLAIN:Ljava/lang/String; = "text/plain"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mShareList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/utils/intents/ShareManager;->mShareList:Ljava/util/List;

    .line 70
    iput-object p1, p0, Lcom/eventgenie/android/utils/intents/ShareManager;->mActivity:Landroid/app/Activity;

    .line 71
    iput-object p2, p0, Lcom/eventgenie/android/utils/intents/ShareManager;->mType:Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    .line 72
    return-void
.end method

.method private static getActivities(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, "sendIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 114
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getShareIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/eventgenie/android/utils/intents/ShareManager;->mType:Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    return-object v0
.end method

.method public declared-synchronized share(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    .line 75
    monitor-enter p0

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/eventgenie/android/utils/intents/ShareManager;->share(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized share(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "entity"    # Ljava/lang/String;
    .param p5, "id"    # J

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/intents/ShareManager;->mShareList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/eventgenie/android/utils/intents/ShareManager;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/eventgenie/android/utils/intents/ShareManager;->mType:Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    invoke-static {v0, v3}, Lcom/eventgenie/android/utils/intents/ShareManager;->getActivities(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/intents/ShareManager;->mShareList:Ljava/util/List;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/intents/ShareManager;->mShareList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/eventgenie/android/utils/intents/ShareManager;->mShareList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 106
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 85
    :cond_2
    :try_start_1
    new-instance v1, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    iget-object v0, p0, Lcom/eventgenie/android/utils/intents/ShareManager;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-direct {v1, v0, p1, v3}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    .line 86
    .local v1, "menu":Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;
    iget-object v0, p0, Lcom/eventgenie/android/utils/intents/ShareManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 88
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x1

    .line 91
    .local v2, "count":I
    iget-object v0, p0, Lcom/eventgenie/android/utils/intents/ShareManager;->mShareList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 92
    .local v7, "info":Landroid/content/pm/ResolveInfo;
    new-instance v5, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v5, "intent":Landroid/content/Intent;
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object v0, p0, Lcom/eventgenie/android/utils/intents/ShareManager;->mType:Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {v5, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v5, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v0, "genie_entity"

    invoke-virtual {v5, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v0, "genie_id"

    invoke-virtual {v5, v0, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcom/eventgenie/android/utils/intents/ShareManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v7, v8}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/eventgenie/android/ui/help/PopupMenuActionHelper;->addShareAction(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)V

    .line 102
    add-int/lit8 v2, v2, 0x1

    .line 103
    goto :goto_1

    .line 105
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "info":Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-virtual {v1}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    .end local v1    # "menu":Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;
    .end local v2    # "count":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
