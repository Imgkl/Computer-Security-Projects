.class Lcom/eventgenie/android/adapters/entity/PoiAdapter;
.super Lcom/eventgenie/android/adapters/entity/EntityImageIndexedCursorAdapter;
.source "PoiAdapter.java"


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
    .line 46
    invoke-direct/range {p0 .. p9}, Lcom/eventgenie/android/adapters/entity/EntityImageIndexedCursorAdapter;-><init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;Lcom/genie_connect/android/db/config/features/GmListModifier;J)V

    .line 47
    return-void
.end method

.method private getAddressString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/entity/PoiAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    const-string v3, "address_address1"

    invoke-interface {v2, v3}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/entity/PoiAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    const-string v3, "address_postCode"

    invoke-interface {v2, v3}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "postCode":Ljava/lang/String;
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    :goto_0
    return-object v2

    .line 70
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 74
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/eventgenie/android/adapters/entity/EntityImageIndexedCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 53
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/entity/PoiAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    sget v0, Lcom/eventgenie/android/R$id;->location:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/PoiAdapter;->getAddressString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p0, p2}, Lcom/eventgenie/android/adapters/entity/PoiAdapter;->toggleMiddleRow(Landroid/view/View;)V

    .line 58
    return-object p2
.end method
