.class public Lcom/eventgenie/android/fragments/other/VerticalLayoutFragment;
.super Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;
.source "VerticalLayoutFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final EXTRA_ENTITY_ID:Ljava/lang/String; = "ENTITY_ID"

.field public static final EXTRA_LIST_TAG:Ljava/lang/String; = "LIST_TAG"

.field public static final EXTRA_LIST_TYPE:Ljava/lang/String; = "LIST_TYPE"

.field public static final TYPE_EXHIBITOR_DETAILS:I = 0x3e8

.field public static final TYPE_POI_DETAILS:I = 0x1f4

.field public static final TYPE_SPEAKER_DETAILS:I = 0x5dc


# instance fields
.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/other/VerticalLayoutFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/fragments/other/VerticalLayoutFragment;->mListAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/other/VerticalLayoutFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/other/VerticalLayoutFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/other/VerticalLayoutFragment;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/eventgenie/android/fragments/other/VerticalLayoutFragment;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/other/VerticalLayoutFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    :cond_0
    return-void
.end method

.method public setAdapterLazyly(Landroid/widget/ListAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "listViewTag"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/eventgenie/android/fragments/other/VerticalLayoutFragment;->mListAdapter:Landroid/widget/ListAdapter;

    .line 70
    iput-object p2, p0, Lcom/eventgenie/android/fragments/other/VerticalLayoutFragment;->mTag:Ljava/lang/String;

    .line 71
    return-void
.end method

.method protected stopLoader()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method
