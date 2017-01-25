.class public Lcom/eventgenie/android/adapters/other/EmailMyEventAdapter;
.super Landroid/widget/ArrayAdapter;
.source "EmailMyEventAdapter.java"


# annotations
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

.field private mChecked:[Z

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private final mColourFilterColor:Ljava/lang/Integer;

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
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;[Z)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "checked"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/config/GenieMobileModule;",
            ">;[Z)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, "modules":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/db/config/GenieMobileModule;>;"
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_icon_text_checkbox:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 63
    iput-object p2, p0, Lcom/eventgenie/android/adapters/other/EmailMyEventAdapter;->mModules:Ljava/util/List;

    .line 64
    iput-object p1, p0, Lcom/eventgenie/android/adapters/other/EmailMyEventAdapter;->mActivity:Landroid/app/Activity;

    .line 65
    iput-object p3, p0, Lcom/eventgenie/android/adapters/other/EmailMyEventAdapter;->mChecked:[Z

    .line 66
    invoke-static {p1}, Lcom/genie_connect/android/db/config/IconManager;->getNamespaceToUseForIcons(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/adapters/other/EmailMyEventAdapter;->mNamespaceToUseForIcons:J

    .line 67
    iget-object v0, p0, Lcom/eventgenie/android/adapters/other/EmailMyEventAdapter;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;

    invoke-interface {v0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    invoke-interface {v0}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->getDetailsTitleColour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/other/EmailMyEventAdapter;->mColourFilterColor:Ljava/lang/Integer;

    .line 68
    return-void
.end method

.method private calculateColorFilter(I)Landroid/graphics/ColorFilter;
    .locals 7
    .param p1, "color"    # I

    .prologue
    const/4 v6, 0x0

    .line 71
    iget-object v4, p0, Lcom/eventgenie/android/adapters/other/EmailMyEventAdapter;->mColorFilter:Landroid/graphics/ColorFilter;

    if-nez v4, :cond_0

    .line 72
    const/high16 v4, 0xff0000

    and-int/2addr v4, p1

    const v5, 0xffff

    div-int v3, v4, v5

    .line 73
    .local v3, "red":I
    const v4, 0xff00

    and-int/2addr v4, p1

    div-int/lit16 v1, v4, 0xff

    .line 74
    .local v1, "green":I
    and-int/lit16 v0, p1, 0xff

    .line 76
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

    .line 81
    .local v2, "matrix":[F
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    iput-object v4, p0, Lcom/eventgenie/android/adapters/other/EmailMyEventAdapter;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 83
    .end local v0    # "blue":I
    .end local v1    # "green":I
    .end local v2    # "matrix":[F
    .end local v3    # "red":I
    :cond_0
    iget-object v4, p0, Lcom/eventgenie/android/adapters/other/EmailMyEventAdapter;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v4
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 89
    iget-object v5, p0, Lcom/eventgenie/android/adapters/other/EmailMyEventAdapter;->mModules:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/android/db/config/GenieMobileModule;

    .line 91
    .local v3, "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    if-nez p2, :cond_0

    .line 92
    iget-object v5, p0, Lcom/eventgenie/android/adapters/other/EmailMyEventAdapter;->mActivity:Landroid/app/Activity;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 93
    .local v2, "mInflater":Landroid/view/LayoutInflater;
    sget v5, Lcom/eventgenie/android/R$layout;->list_item_icon_text_checkbox:I

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 96
    .end local v2    # "mInflater":Landroid/view/LayoutInflater;
    :cond_0
    sget v5, Lcom/eventgenie/android/R$id;->icon:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 97
    .local v1, "ib":Landroid/widget/ImageView;
    const v5, 0x1020014

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 98
    .local v4, "tv":Landroid/widget/TextView;
    sget v5, Lcom/eventgenie/android/R$id;->checkBox:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 100
    .local v0, "cb":Landroid/widget/CheckBox;
    iget-object v5, p0, Lcom/eventgenie/android/adapters/other/EmailMyEventAdapter;->mActivity:Landroid/app/Activity;

    iget-wide v6, p0, Lcom/eventgenie/android/adapters/other/EmailMyEventAdapter;->mNamespaceToUseForIcons:J

    sget-object v8, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->LIST:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getIcon(Landroid/content/Context;JLcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;)Lcom/genie_connect/android/db/config/WidgetIcon;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/WidgetIcon;->getDrawableId()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v5, p0, Lcom/eventgenie/android/adapters/other/EmailMyEventAdapter;->mChecked:[Z

    aget-boolean v5, v5, p1

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 104
    iget-object v5, p0, Lcom/eventgenie/android/adapters/other/EmailMyEventAdapter;->mColourFilterColor:Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 105
    iget-object v5, p0, Lcom/eventgenie/android/adapters/other/EmailMyEventAdapter;->mColourFilterColor:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/eventgenie/android/adapters/other/EmailMyEventAdapter;->calculateColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 108
    :cond_1
    return-object p2
.end method
