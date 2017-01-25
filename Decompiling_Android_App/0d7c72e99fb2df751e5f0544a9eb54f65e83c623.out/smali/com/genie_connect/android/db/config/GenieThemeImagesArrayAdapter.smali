.class public final Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GenieThemeImagesArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final mLayout:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mItemArray:[Ljava/lang/String;

.field private final mNamespaceToUseForIcons:J

.field private final mOverrideIcons:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_icon_check:I

    sput v0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->mLayout:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "array"    # [Ljava/lang/String;
    .param p3, "overrideIcons"    # Z

    .prologue
    .line 51
    sget v0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->mLayout:I

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 52
    iput-object p1, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->mItemArray:[Ljava/lang/String;

    .line 54
    iput-boolean p3, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->mOverrideIcons:Z

    .line 55
    invoke-static {p1}, Lcom/genie_connect/android/db/config/IconManager;->getNamespaceToUseForIcons(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->mNamespaceToUseForIcons:J

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->mOverrideIcons:Z

    return v0
.end method

.method static synthetic access$100(Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;)J
    .locals 2
    .param p0, "x0"    # Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->mNamespaceToUseForIcons:J

    return-wide v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->mItemArray:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->mItemArray:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    move-object v1, p2

    .line 62
    .local v1, "row":Landroid/view/View;
    const/4 v2, 0x0

    .line 64
    .local v2, "wrapper":Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;
    if-nez v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 66
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->mLayout:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 67
    new-instance v2, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;

    .end local v2    # "wrapper":Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;
    invoke-direct {v2, p0, v1}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;-><init>(Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;Landroid/view/View;)V

    .line 68
    .restart local v2    # "wrapper":Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->populateFrom(Ljava/lang/String;)V

    .line 75
    return-object v1

    .line 70
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "wrapper":Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;
    check-cast v2, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;

    .restart local v2    # "wrapper":Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;
    goto :goto_0
.end method
