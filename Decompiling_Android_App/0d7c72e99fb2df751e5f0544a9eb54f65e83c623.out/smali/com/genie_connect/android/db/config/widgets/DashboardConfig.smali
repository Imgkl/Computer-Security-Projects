.class public final Lcom/genie_connect/android/db/config/widgets/DashboardConfig;
.super Lcom/genie_connect/android/db/config/BaseConfig;
.source "DashboardConfig.java"


# static fields
.field private static final LAYOUT:Ljava/lang/String; = "layout"

.field public static final LAYOUT_ID_GRID:I = 0x1

.field public static final LAYOUT_ID_GRID_SPLIT_BG:I = 0x5

.field public static final LAYOUT_ID_GRID_W_MESSAGES:I = 0x3

.field public static final LAYOUT_ID_INVALID:I = -0x1

.field public static final LAYOUT_ID_TABS:I = 0x2

.field public static final LAYOUT_ID_TABS_W_MESSAGES:I = 0x4

.field public static final LAYOUT_ID_TILE_LAYOUT:I = 0x3ef

.field private static final LAYOUT_TYPE:Ljava/lang/String; = "layoutType"

.field private static final PARENT_OVERRIDES_CHILD_LAYOUT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHOW_LATEST_MESSAGE:Ljava/lang/String; = "showLatestMessage"


# instance fields
.field private final mLayout:I

.field private final mLayoutType:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

.field private final mNamespace:J

.field private final mShowFeatured:Z

.field private final mShowLatestMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->populateParentOverridesChildLayout()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->PARENT_OVERRIDES_CHILD_LAYOUT:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Lorg/json/JSONObject;J)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "namespace"    # J

    .prologue
    const/4 v1, 0x1

    .line 70
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->DASHBOARD:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-direct {p0, v0, p1}, Lcom/genie_connect/android/db/config/BaseConfig;-><init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 72
    const-string v0, "showLatestMessage"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->mShowLatestMessage:Z

    .line 73
    const-string v0, "showFeatured"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->mShowFeatured:Z

    .line 74
    const-string v0, "layoutType"

    invoke-static {p1, v0}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->fromString(Ljava/lang/String;)Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->mLayoutType:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    .line 75
    const-string v0, "layout"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->mLayout:I

    .line 76
    iput-wide p2, p0, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->mNamespace:J

    .line 78
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->mShowFeatured:Z

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->setTabLimit(I)V

    .line 81
    :cond_0
    return-void
.end method

.method private static populateParentOverridesChildLayout()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 139
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const-wide v2, 0x141ec9c7800000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    return-object v0
.end method


# virtual methods
.method protected getLayout(Landroid/content/Context;Z)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checkParentLayout"    # Z

    .prologue
    const/4 v6, 0x0

    .line 86
    if-eqz p2, :cond_0

    .line 87
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/datastore/Datastore;->isMultiEventActive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getActiveDataInstance()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 90
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    invoke-virtual {v2, p1, v6}, Lcom/genie_connect/android/db/datastore/Datastore;->getPrimaryConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    .line 92
    .local v0, "parent":Lcom/genie_connect/android/db/config/AppConfig;
    sget-object v2, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->PARENT_OVERRIDES_CHILD_LAYOUT:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    const-string v2, "^ DASH: Using parent layout"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v2

    invoke-virtual {v2, p1, v6}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->getLayout(Landroid/content/Context;Z)I

    move-result v1

    .line 116
    .end local v0    # "parent":Lcom/genie_connect/android/db/config/AppConfig;
    :goto_0
    return v1

    .line 100
    :cond_0
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/SetupConfig;->isDesignerLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    const/16 v1, 0x3ef

    .line 115
    .local v1, "res":I
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ DASH: Layout ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    .end local v1    # "res":I
    :cond_1
    iget v2, p0, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->mLayout:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 104
    const-string v2, "^ DASH: Invalid layout ID!"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 105
    sget-object v2, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->GRID:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    iget-object v3, p0, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->mLayoutType:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    if-ne v2, v3, :cond_2

    .line 106
    const/4 v1, 0x1

    .restart local v1    # "res":I
    goto :goto_1

    .line 108
    .end local v1    # "res":I
    :cond_2
    const/4 v1, 0x2

    .restart local v1    # "res":I
    goto :goto_1

    .line 111
    .end local v1    # "res":I
    :cond_3
    iget v1, p0, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->mLayout:I

    .restart local v1    # "res":I
    goto :goto_1
.end method

.method public isLatestMessageDisplayed()Z
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->mLayout:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 121
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->mShowLatestMessage:Z

    .line 128
    :goto_0
    return v0

    .line 123
    :cond_0
    iget v0, p0, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->mLayout:I

    packed-switch v0, :pswitch_data_0

    .line 128
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isShowFeatured()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->mShowFeatured:Z

    return v0
.end method
