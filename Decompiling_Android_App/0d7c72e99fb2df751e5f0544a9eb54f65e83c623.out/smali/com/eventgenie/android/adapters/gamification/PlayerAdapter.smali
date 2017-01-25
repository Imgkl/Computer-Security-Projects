.class Lcom/eventgenie/android/adapters/gamification/PlayerAdapter;
.super Lcom/eventgenie/android/adapters/gamification/GamificationCursorBaseAdapter;
.source "PlayerAdapter.java"


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
    .line 42
    invoke-direct/range {p0 .. p9}, Lcom/eventgenie/android/adapters/gamification/GamificationCursorBaseAdapter;-><init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;Lcom/genie_connect/android/db/config/features/GmListModifier;J)V

    .line 43
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/eventgenie/android/adapters/gamification/GamificationCursorBaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 49
    invoke-virtual {p0, p2}, Lcom/eventgenie/android/adapters/gamification/PlayerAdapter;->toggleMiddleRow(Landroid/view/View;)V

    .line 51
    return-object p2
.end method
