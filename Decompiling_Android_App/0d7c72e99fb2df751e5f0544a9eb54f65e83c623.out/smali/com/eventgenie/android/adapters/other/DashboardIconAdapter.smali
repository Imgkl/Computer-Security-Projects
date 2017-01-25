.class public Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;
.super Landroid/widget/BaseAdapter;
.source "DashboardIconAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/adapters/other/DashboardIconAdapter$DisplayBadgeCount;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mAnimation:Landroid/view/animation/Animation;

.field private mGridIndex:I

.field private final mIconsPerGrid:I

.field private final mIsMyInboxOnTheDashboard:Z

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

.field private final mTextColour:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;IIIZ)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "textColour"    # I
    .param p4, "gridIndex"    # I
    .param p5, "iconsPerGrid"    # I
    .param p6, "isMyInboxOnTheDashboard"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/config/GenieMobileModule;",
            ">;IIIZ)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "mModules":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/db/config/GenieMobileModule;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 68
    sget v0, Lcom/eventgenie/android/R$anim;->fadein:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mAnimation:Landroid/view/animation/Animation;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mGridIndex:I

    .line 70
    iput p5, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mIconsPerGrid:I

    .line 71
    iput-object p2, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mModules:Ljava/util/List;

    .line 72
    iput-object p1, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mActivity:Landroid/app/Activity;

    .line 73
    iput p3, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mTextColour:I

    .line 74
    iput-boolean p6, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mIsMyInboxOnTheDashboard:Z

    .line 75
    invoke-static {p1}, Lcom/genie_connect/android/db/config/IconManager;->getNamespaceToUseForIcons(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mNamespaceToUseForIcons:J

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mIsMyInboxOnTheDashboard:Z

    return v0
.end method


# virtual methods
.method public generateDrawable(Lcom/genie_connect/android/db/config/GenieMobileModule;Landroid/widget/ImageView;)V
    .locals 7
    .param p1, "module"    # Lcom/genie_connect/android/db/config/GenieMobileModule;
    .param p2, "iv"    # Landroid/widget/ImageView;

    .prologue
    const/4 v6, 0x0

    .line 154
    iget-object v2, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mActivity:Landroid/app/Activity;

    iget-wide v4, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mNamespaceToUseForIcons:J

    sget-object v3, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->GRID:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    invoke-virtual {p1, v2, v4, v5, v3}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getIcon(Landroid/content/Context;JLcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;)Lcom/genie_connect/android/db/config/WidgetIcon;

    move-result-object v1

    .line 156
    .local v1, "icon":Lcom/genie_connect/android/db/config/WidgetIcon;
    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/WidgetIcon;->getDrawableId()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/WidgetIcon;->getUnderlayId()I

    move-result v2

    if-nez v2, :cond_1

    .line 159
    invoke-static {p2, v6}, Lcom/eventgenie/android/ui/help/UIUtils;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 160
    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/WidgetIcon;->getColourFilter()I

    move-result v2

    if-nez v2, :cond_0

    .line 161
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 176
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/WidgetIcon;->getColourFilter()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v2, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/WidgetIcon;->getUnderlayId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 168
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/WidgetIcon;->getColourFilter()I

    move-result v2

    if-nez v2, :cond_2

    .line 169
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 174
    :goto_1
    invoke-static {p2, v0}, Lcom/eventgenie/android/ui/help/UIUtils;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/WidgetIcon;->getColourFilter()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "n":I
    iget v1, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mGridIndex:I

    packed-switch v1, :pswitch_data_0

    .line 89
    :goto_0
    return v0

    .line 83
    :pswitch_0
    iget-object v1, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mModules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 84
    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v1, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mModules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mIconsPerGrid:I

    sub-int v0, v1, v2

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 100
    iget v0, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mGridIndex:I

    packed-switch v0, :pswitch_data_0

    .line 106
    int-to-long v0, p1

    :goto_0
    return-wide v0

    .line 102
    :pswitch_0
    int-to-long v0, p1

    goto :goto_0

    .line 104
    :pswitch_1
    iget v0, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mIconsPerGrid:I

    add-int/2addr v0, p1

    int-to-long v0, v0

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 116
    iget v4, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mGridIndex:I

    packed-switch v4, :pswitch_data_0

    .line 121
    iget-object v4, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mModules:Ljava/util/List;

    iget v5, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mIconsPerGrid:I

    add-int/2addr v5, p1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/db/config/GenieMobileModule;

    .line 125
    .local v2, "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    :goto_0
    if-nez p2, :cond_0

    .line 126
    iget-object v4, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 127
    .local v1, "li":Landroid/view/LayoutInflater;
    sget v4, Lcom/eventgenie/android/R$layout;->dashboard_icon:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 128
    .local v3, "v":Landroid/view/View;
    new-instance v0, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;

    invoke-direct {v0}, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;-><init>()V

    .line 129
    .local v0, "holder":Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;
    iput-object v2, v0, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->module:Lcom/genie_connect/android/db/config/GenieMobileModule;

    .line 130
    sget v4, Lcom/eventgenie/android/R$id;->icon_image:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->ib:Landroid/widget/ImageView;

    .line 131
    sget v4, Lcom/eventgenie/android/R$id;->icon_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->tv:Landroid/widget/TextView;

    .line 132
    new-instance v4, Lcom/readystatesoftware/viewbadger/BadgeView;

    iget-object v5, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mActivity:Landroid/app/Activity;

    iget-object v6, v0, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->ib:Landroid/widget/ImageView;

    invoke-direct {v4, v5, v6}, Lcom/readystatesoftware/viewbadger/BadgeView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v4, v0, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->badge:Lcom/readystatesoftware/viewbadger/BadgeView;

    .line 133
    iget-object v4, v0, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->badge:Lcom/readystatesoftware/viewbadger/BadgeView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/readystatesoftware/viewbadger/BadgeView;->setBadgePosition(I)V

    .line 134
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 142
    .end local v1    # "li":Landroid/view/LayoutInflater;
    :goto_1
    iget-object v4, v0, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->ib:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v4}, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->generateDrawable(Lcom/genie_connect/android/db/config/GenieMobileModule;Landroid/widget/ImageView;)V

    .line 145
    iget-object v4, v0, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->tv:Landroid/widget/TextView;

    iget v5, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mTextColour:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    iget-object v4, v0, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->tv:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    new-instance v4, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter$DisplayBadgeCount;

    invoke-direct {v4, p0}, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter$DisplayBadgeCount;-><init>(Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;)V

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v4, v5}, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter$DisplayBadgeCount;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 150
    return-object v3

    .line 118
    .end local v0    # "holder":Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;
    .end local v2    # "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    .end local v3    # "v":Landroid/view/View;
    :pswitch_0
    iget-object v4, p0, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->mModules:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/db/config/GenieMobileModule;

    .line 119
    .restart local v2    # "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    goto :goto_0

    .line 136
    :cond_0
    move-object v3, p2

    .line 137
    .restart local v3    # "v":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;

    .line 138
    .restart local v0    # "holder":Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;
    iput-object v2, v0, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->module:Lcom/genie_connect/android/db/config/GenieMobileModule;

    goto :goto_1

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
