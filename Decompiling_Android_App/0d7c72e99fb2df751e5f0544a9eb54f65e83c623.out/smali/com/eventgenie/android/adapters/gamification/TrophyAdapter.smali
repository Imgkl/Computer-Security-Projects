.class Lcom/eventgenie/android/adapters/gamification/TrophyAdapter;
.super Lcom/eventgenie/android/adapters/gamification/GamificationCursorBaseAdapter;
.source "TrophyAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;Lcom/genie_connect/android/db/config/features/GmListModifier;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "data"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .param p6, "alphaIndexColumn"    # Ljava/lang/String;
    .param p7, "featureConfig"    # Lcom/genie_connect/android/db/config/features/GmListModifier;
    .param p8, "namespace"    # J

    .prologue
    .line 49
    invoke-direct/range {p0 .. p9}, Lcom/eventgenie/android/adapters/gamification/GamificationCursorBaseAdapter;-><init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;Lcom/genie_connect/android/db/config/features/GmListModifier;J)V

    .line 50
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/eventgenie/android/adapters/gamification/GamificationCursorBaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 55
    sget v1, Lcom/eventgenie/android/R$id;->photo:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 56
    .local v9, "trophyImage":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/gamification/TrophyAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    const-string v2, "icon"

    invoke-interface {v1, v2}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "icon":Ljava/lang/String;
    invoke-static {v0}, Lcom/genie_connect/android/db/config/IconManager;->getTrophyIconResource(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 58
    .local v7, "iconRes":Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/gamification/TrophyAdapter;->getGameStore()Lcom/genie_connect/android/db/access/GameStore;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/gamification/TrophyAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/access/GameStore;->getMyScoreForTrophy(J)I

    move-result v8

    .line 59
    .local v8, "progress":I
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/gamification/TrophyAdapter;->getGameStore()Lcom/genie_connect/android/db/access/GameStore;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/gamification/TrophyAdapter;->getItemId(I)J

    move-result-wide v2

    int-to-long v10, v8

    invoke-virtual {v1, v2, v3, v10, v11}, Lcom/genie_connect/android/db/access/GameStore;->getColourForTrophy(JJ)I

    move-result v6

    .line 60
    .local v6, "colour":I
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/gamification/TrophyAdapter;->getGameStore()Lcom/genie_connect/android/db/access/GameStore;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/gamification/TrophyAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/access/GameStore;->getMaxTrophyThresholdValue(J)J

    move-result-wide v4

    .line 62
    .local v4, "maxValue":J
    sget v1, Lcom/eventgenie/android/R$id;->progressbar:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/ui/other/TextProgressBar;

    int-to-long v2, v8

    invoke-static/range {v1 .. v6}, Lcom/eventgenie/android/ui/help/GamificationHelper;->setupProgressbar(Lcom/eventgenie/android/ui/other/TextProgressBar;JJI)V

    .line 67
    sget v1, Lcom/eventgenie/android/R$id;->divider:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 69
    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/gamification/TrophyAdapter;->getListModifier()Lcom/genie_connect/android/db/config/features/GmListModifier;

    move-result-object v1

    invoke-interface {v1}, Lcom/genie_connect/android/db/config/features/GmListModifier;->getPlaceholderAssetId()I

    move-result v1

    :goto_0
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v6, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 72
    invoke-virtual {p0, p2}, Lcom/eventgenie/android/adapters/gamification/TrophyAdapter;->toggleMiddleRow(Landroid/view/View;)V

    .line 74
    return-object p2

    .line 69
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method
