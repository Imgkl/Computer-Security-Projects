.class Lcom/eventgenie/android/adapters/gamification/GameAdapter;
.super Lcom/eventgenie/android/adapters/gamification/GamificationCursorBaseAdapter;
.source "GameAdapter.java"


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
    .line 45
    invoke-direct/range {p0 .. p9}, Lcom/eventgenie/android/adapters/gamification/GamificationCursorBaseAdapter;-><init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;Lcom/genie_connect/android/db/config/features/GmListModifier;J)V

    .line 46
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/eventgenie/android/adapters/gamification/GamificationCursorBaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    sget v0, Lcom/eventgenie/android/R$id;->progressbar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/ui/other/TextProgressBar;

    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/gamification/GameAdapter;->getGameStore()Lcom/genie_connect/android/db/access/GameStore;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/gamification/GameAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/eventgenie/android/ui/help/GamificationHelper;->setupProgressbarForGame(Lcom/eventgenie/android/ui/other/TextProgressBar;Lcom/genie_connect/android/db/access/GameStore;J)V

    .line 57
    sget v0, Lcom/eventgenie/android/R$id;->divider:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    invoke-virtual {p0, p2}, Lcom/eventgenie/android/adapters/gamification/GameAdapter;->toggleMiddleRow(Landroid/view/View;)V

    .line 60
    return-object p2
.end method
