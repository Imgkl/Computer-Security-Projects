.class public Lcom/eventgenie/android/adapters/entity/VisitorProfileInterestsAdapter;
.super Lcom/eventgenie/android/adapters/entity/CategoryFilterAdapter;
.source "VisitorProfileInterestsAdapter.java"


# static fields
.field private static final NAME:Ljava/lang/String; = "name"


# instance fields
.field private final mEditable:Ljava/lang/Boolean;

.field private final mFullInterestsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterestsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/util/List;Ljava/lang/Boolean;Lorg/json/JSONArray;)V
    .locals 5
    .param p1, "c"    # Landroid/app/Activity;
    .param p2, "resourceId"    # I
    .param p4, "editable"    # Ljava/lang/Boolean;
    .param p5, "interestArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/eventgenie/android/adapters/entity/CategoryFilterAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;)V

    .line 49
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/eventgenie/android/adapters/entity/VisitorProfileInterestsAdapter;->mInterestsList:Ljava/util/List;

    .line 54
    iput-object p3, p0, Lcom/eventgenie/android/adapters/entity/VisitorProfileInterestsAdapter;->mFullInterestsList:Ljava/util/List;

    .line 55
    iput-object p4, p0, Lcom/eventgenie/android/adapters/entity/VisitorProfileInterestsAdapter;->mEditable:Ljava/lang/Boolean;

    .line 58
    invoke-virtual {p5}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 60
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 61
    invoke-virtual {p5, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 62
    .local v2, "o":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 63
    iget-object v3, p0, Lcom/eventgenie/android/adapters/entity/VisitorProfileInterestsAdapter;->mInterestsList:Ljava/util/List;

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    .end local v2    # "o":Lorg/json/JSONObject;
    :cond_1
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorProfileInterestsAdapter;->mInterestsList:Ljava/util/List;

    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/VisitorProfileInterestsAdapter;->mFullInterestsList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p3

    .line 80
    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 83
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/eventgenie/android/adapters/entity/CategoryFilterAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorProfileInterestsAdapter;->mEditable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
