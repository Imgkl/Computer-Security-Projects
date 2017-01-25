.class public Lcom/eventgenie/android/adapters/gamification/TrophyThresholdAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TrophyThresholdAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final ROW_LAYOUT:I


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_threshold:I

    sput v0, Lcom/eventgenie/android/adapters/gamification/TrophyThresholdAdapter;->ROW_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/genie_connect/android/db/config/AppConfig;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;",
            ">;",
            "Lcom/genie_connect/android/db/config/AppConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;>;"
    sget v0, Lcom/eventgenie/android/adapters/gamification/TrophyThresholdAdapter;->ROW_LAYOUT:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 56
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/gamification/TrophyThresholdAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/TrophyThresholdAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    return-void
.end method

.method private static safeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {p0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    .end local p0    # "text":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "text":Ljava/lang/String;
    :cond_0
    const-string p0, ""

    goto :goto_0
.end method

.method protected static tryString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "suspectString"    # Ljava/lang/String;
    .param p1, "defaultString"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {p0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    .end local p0    # "suspectString":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "suspectString":Ljava/lang/String;
    :cond_0
    move-object p0, p1

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x0

    .line 61
    move-object v5, p2

    .line 63
    .local v5, "row":Landroid/view/View;
    if-nez v5, :cond_0

    .line 64
    iget-object v8, p0, Lcom/eventgenie/android/adapters/gamification/TrophyThresholdAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v9, Lcom/eventgenie/android/adapters/gamification/TrophyThresholdAdapter;->ROW_LAYOUT:I

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 67
    :cond_0
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/gamification/TrophyThresholdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;

    .line 69
    .local v6, "threshold":Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;
    sget v8, Lcom/eventgenie/android/R$id;->photo:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 70
    .local v3, "photo":Landroid/widget/ImageView;
    sget v8, Lcom/eventgenie/android/R$id;->title:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 71
    .local v7, "title":Landroid/widget/TextView;
    sget v8, Lcom/eventgenie/android/R$id;->count:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 74
    .local v1, "count":Landroid/widget/TextView;
    invoke-virtual {v6}, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;->getIcon()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "icon":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;->getColour()Ljava/lang/String;

    move-result-object v8

    const-string v9, "#FFFFFF"

    invoke-static {v8, v9}, Lcom/eventgenie/android/adapters/gamification/TrophyThresholdAdapter;->tryString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "colour":Ljava/lang/String;
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 78
    invoke-static {v2}, Lcom/genie_connect/android/db/config/IconManager;->getTrophyIconResource(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 79
    .local v4, "res":Ljava/lang/Integer;
    if-eqz v4, :cond_1

    .line 80
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v8, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 91
    .end local v4    # "res":Ljava/lang/Integer;
    :goto_0
    invoke-virtual {v6}, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/adapters/gamification/TrophyThresholdAdapter;->safeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;->getThresholdValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/adapters/gamification/TrophyThresholdAdapter;->safeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-object v5

    .line 83
    .restart local v4    # "res":Ljava/lang/Integer;
    :cond_1
    sget v8, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 87
    .end local v4    # "res":Ljava/lang/Integer;
    :cond_2
    sget v8, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method
