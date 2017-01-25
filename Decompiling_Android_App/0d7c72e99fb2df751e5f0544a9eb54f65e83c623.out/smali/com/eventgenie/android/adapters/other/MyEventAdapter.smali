.class public Lcom/eventgenie/android/adapters/other/MyEventAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MyEventAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/adapters/other/MyEventAdapter$DisplayBadgeCount;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/genie_connect/android/db/config/GenieMobileModule;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mAnimation:Landroid/view/animation/Animation;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private final mColourFilterColor:Ljava/lang/Integer;

.field private final mDisplayIds:Z

.field private final mModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/config/GenieMobileModule;",
            ">;"
        }
    .end annotation
.end field

.field private final mNamespaceToUseForIcons:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/config/GenieMobileModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p2, "modules":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/db/config/GenieMobileModule;>;"
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_icon_text:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 74
    iput-object p2, p0, Lcom/eventgenie/android/adapters/other/MyEventAdapter;->mModules:Ljava/util/List;

    .line 75
    iput-object p1, p0, Lcom/eventgenie/android/adapters/other/MyEventAdapter;->mActivity:Landroid/app/Activity;

    .line 76
    sget v0, Lcom/eventgenie/android/R$anim;->fadein:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/other/MyEventAdapter;->mAnimation:Landroid/view/animation/Animation;

    .line 77
    iget-object v0, p0, Lcom/eventgenie/android/adapters/other/MyEventAdapter;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;

    invoke-interface {v0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    invoke-interface {v0}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->getDetailsTitleColour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/other/MyEventAdapter;->mColourFilterColor:Ljava/lang/Integer;

    .line 78
    invoke-static {p1}, Lcom/genie_connect/android/db/config/IconManager;->getNamespaceToUseForIcons(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/adapters/other/MyEventAdapter;->mNamespaceToUseForIcons:J

    .line 79
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isShowEntityIdsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/adapters/other/MyEventAdapter;->mDisplayIds:Z

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/adapters/other/MyEventAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/other/MyEventAdapter;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/eventgenie/android/adapters/other/MyEventAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/adapters/other/MyEventAdapter;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/other/MyEventAdapter;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/eventgenie/android/adapters/other/MyEventAdapter;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private calculateColorFilter(I)Landroid/graphics/ColorFilter;
    .locals 7
    .param p1, "color"    # I

    .prologue
    const/4 v6, 0x0

    .line 83
    iget-object v4, p0, Lcom/eventgenie/android/adapters/other/MyEventAdapter;->mColorFilter:Landroid/graphics/ColorFilter;

    if-nez v4, :cond_0

    .line 84
    const/high16 v4, 0xff0000

    and-int/2addr v4, p1

    const v5, 0xffff

    div-int v3, v4, v5

    .line 85
    .local v3, "red":I
    const v4, 0xff00

    and-int/2addr v4, p1

    div-int/lit16 v1, v4, 0xff

    .line 86
    .local v1, "green":I
    and-int/lit16 v0, p1, 0xff

    .line 88
    .local v0, "blue":I
    const/16 v4, 0x14

    new-array v2, v4, [F

    const/4 v4, 0x0

    aput v6, v2, v4

    const/4 v4, 0x1

    aput v6, v2, v4

    const/4 v4, 0x2

    aput v6, v2, v4

    const/4 v4, 0x3

    aput v6, v2, v4

    const/4 v4, 0x4

    int-to-float v5, v3

    aput v5, v2, v4

    const/4 v4, 0x5

    aput v6, v2, v4

    const/4 v4, 0x6

    aput v6, v2, v4

    const/4 v4, 0x7

    aput v6, v2, v4

    const/16 v4, 0x8

    aput v6, v2, v4

    const/16 v4, 0x9

    int-to-float v5, v1

    aput v5, v2, v4

    const/16 v4, 0xa

    aput v6, v2, v4

    const/16 v4, 0xb

    aput v6, v2, v4

    const/16 v4, 0xc

    aput v6, v2, v4

    const/16 v4, 0xd

    aput v6, v2, v4

    const/16 v4, 0xe

    int-to-float v5, v0

    aput v5, v2, v4

    const/16 v4, 0xf

    aput v6, v2, v4

    const/16 v4, 0x10

    aput v6, v2, v4

    const/16 v4, 0x11

    aput v6, v2, v4

    const/16 v4, 0x12

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v2, v4

    const/16 v4, 0x13

    aput v6, v2, v4

    .line 93
    .local v2, "matrix":[F
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    iput-object v4, p0, Lcom/eventgenie/android/adapters/other/MyEventAdapter;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 95
    .end local v0    # "blue":I
    .end local v1    # "green":I
    .end local v2    # "matrix":[F
    .end local v3    # "red":I
    :cond_0
    iget-object v4, p0, Lcom/eventgenie/android/adapters/other/MyEventAdapter;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v4
.end method

.method private setupIcon(Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;Lcom/genie_connect/android/db/config/WidgetIcon;)V
    .locals 4
    .param p1, "holder"    # Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;
    .param p2, "icon"    # Lcom/genie_connect/android/db/config/WidgetIcon;

    .prologue
    .line 99
    iget-object v0, p1, Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;->ib:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/WidgetIcon;->getDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-wide v0, p0, Lcom/eventgenie/android/adapters/other/MyEventAdapter;->mNamespaceToUseForIcons:J

    const-wide/32 v2, 0x8adaeb

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/adapters/other/MyEventAdapter;->mColourFilterColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p1, Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;->ib:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/eventgenie/android/adapters/other/MyEventAdapter;->mColourFilterColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/eventgenie/android/adapters/other/MyEventAdapter;->calculateColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 113
    iget-object v5, p0, Lcom/eventgenie/android/adapters/other/MyEventAdapter;->mModules:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genie_connect/android/db/config/GenieMobileModule;

    .line 116
    .local v4, "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    if-nez p2, :cond_0

    .line 117
    iget-object v5, p0, Lcom/eventgenie/android/adapters/other/MyEventAdapter;->mActivity:Landroid/app/Activity;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 118
    .local v1, "mInflater":Landroid/view/LayoutInflater;
    sget v5, Lcom/eventgenie/android/R$layout;->list_item_icon_text:I

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 119
    new-instance v0, Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;

    invoke-direct {v0}, Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;-><init>()V

    .line 120
    .local v0, "holder":Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;
    sget v5, Lcom/eventgenie/android/R$id;->icon:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v0, Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;->ib:Landroid/widget/ImageView;

    .line 121
    const v5, 0x1020014

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;->tv:Landroid/widget/TextView;

    .line 122
    sget v5, Lcom/eventgenie/android/R$id;->badge_count:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;->badgeTv:Landroid/widget/TextView;

    .line 123
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 129
    .end local v1    # "mInflater":Landroid/view/LayoutInflater;
    :goto_0
    iput-object v4, v0, Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;->module:Lcom/genie_connect/android/db/config/GenieMobileModule;

    .line 131
    iget-boolean v5, p0, Lcom/eventgenie/android/adapters/other/MyEventAdapter;->mDisplayIds:Z

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/GenieMobileModule;->hasValidIntent()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 132
    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->INFO:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getWidget()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v6

    if-ne v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getNavigationIntent()Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 133
    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getNavigationIntent()Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "entity_id"

    const-wide/16 v8, -0x1

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 134
    .local v2, "id":J
    iget-object v5, v0, Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;->tv:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->joinIdAndName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .end local v2    # "id":J
    :goto_1
    iget-object v5, p0, Lcom/eventgenie/android/adapters/other/MyEventAdapter;->mActivity:Landroid/app/Activity;

    iget-wide v6, p0, Lcom/eventgenie/android/adapters/other/MyEventAdapter;->mNamespaceToUseForIcons:J

    sget-object v8, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->LIST:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getIcon(Landroid/content/Context;JLcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;)Lcom/genie_connect/android/db/config/WidgetIcon;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/eventgenie/android/adapters/other/MyEventAdapter;->setupIcon(Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;Lcom/genie_connect/android/db/config/WidgetIcon;)V

    .line 144
    new-instance v5, Lcom/eventgenie/android/adapters/other/MyEventAdapter$DisplayBadgeCount;

    invoke-direct {v5, p0}, Lcom/eventgenie/android/adapters/other/MyEventAdapter$DisplayBadgeCount;-><init>(Lcom/eventgenie/android/adapters/other/MyEventAdapter;)V

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v5, v6}, Lcom/eventgenie/android/adapters/other/MyEventAdapter$DisplayBadgeCount;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 146
    return-object p2

    .line 126
    .end local v0    # "holder":Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;

    .restart local v0    # "holder":Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;
    goto :goto_0

    .line 136
    :cond_1
    iget-object v5, v0, Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;->tv:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 139
    :cond_2
    iget-object v5, v0, Lcom/eventgenie/android/ui/badgecount/BadgeTextViewHolder;->tv:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
