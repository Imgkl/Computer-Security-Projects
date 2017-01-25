.class public Lcom/julysystems/appx/AppXPageData;
.super Ljava/lang/Object;
.source "AppXPageData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/julysystems/appx/AppXPageData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private data:[B

.field private doc:Lorg/w3c/dom/Document;

.field private docRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/w3c/dom/Document;",
            ">;"
        }
    .end annotation
.end field

.field private error:Z

.field public loaded:Z

.field public pageViewRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/julysystems/appx/AppXPageView;",
            ">;"
        }
    .end annotation
.end field

.field public preloaded:Z

.field private renderUtil:Lcom/julysystems/appx/AppXRenderRenderUtil;

.field public renderUtilRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/julysystems/appx/AppXRenderRenderUtil;",
            ">;"
        }
    .end annotation
.end field

.field public viewElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/julysystems/appx/AppXViewElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lcom/julysystems/appx/AppXPageData$1;

    invoke-direct {v0}, Lcom/julysystems/appx/AppXPageData$1;-><init>()V

    sput-object v0, Lcom/julysystems/appx/AppXPageData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 164
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v1, p0, Lcom/julysystems/appx/AppXPageData;->error:Z

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/julysystems/appx/AppXPageData;->viewElements:Ljava/util/List;

    .line 31
    iput-boolean v1, p0, Lcom/julysystems/appx/AppXPageData;->preloaded:Z

    iput-boolean v1, p0, Lcom/julysystems/appx/AppXPageData;->loaded:Z

    .line 35
    iput-object p1, p0, Lcom/julysystems/appx/AppXPageData;->data:[B

    .line 36
    return-void
.end method


# virtual methods
.method public addComponents(Lcom/julysystems/appx/AppXPageActivity;)V
    .locals 7
    .param p1, "pageActivity"    # Lcom/julysystems/appx/AppXPageActivity;

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXPageData;->getDoc()Lorg/w3c/dom/Document;

    move-result-object v0

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXPageData;->getDoc()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    .line 93
    .local v4, "element":Lorg/w3c/dom/Element;
    iget-object v6, p0, Lcom/julysystems/appx/AppXPageData;->viewElements:Ljava/util/List;

    monitor-enter v6

    .line 94
    :try_start_0
    iget-boolean v0, p0, Lcom/julysystems/appx/AppXPageData;->loaded:Z

    if-nez v0, :cond_1

    .line 95
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXPageActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 96
    sget-object v0, Lcom/julysystems/appx/AppXConstants;->appXEngine:Lcom/julysystems/appx/AppX;

    invoke-virtual {p1}, Lcom/julysystems/appx/AppXPageActivity;->getContentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sget-object v2, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/julysystems/appx/AppXPageData;->viewElements:Ljava/util/List;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/julysystems/appx/AppX;->addComponents(Landroid/widget/LinearLayout;Landroid/content/Context;Ljava/util/List;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageActivity;)V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/julysystems/appx/AppXPageData;->loaded:Z

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/julysystems/appx/AppXPageData;->preloaded:Z

    .line 93
    :cond_1
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addComponents(Lcom/julysystems/appx/AppXPageActivity;Lcom/julysystems/appx/AppXPageView;)V
    .locals 7
    .param p1, "pageActivity"    # Lcom/julysystems/appx/AppXPageActivity;
    .param p2, "pageView"    # Lcom/julysystems/appx/AppXPageView;

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXPageData;->getDoc()Lorg/w3c/dom/Document;

    move-result-object v0

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXPageData;->getDoc()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    .line 107
    .local v4, "element":Lorg/w3c/dom/Element;
    iget-object v6, p0, Lcom/julysystems/appx/AppXPageData;->viewElements:Ljava/util/List;

    monitor-enter v6

    .line 108
    :try_start_0
    iget-boolean v0, p0, Lcom/julysystems/appx/AppXPageData;->loaded:Z

    if-nez v0, :cond_1

    .line 109
    sget-object v0, Lcom/julysystems/appx/AppXConstants;->appXEngine:Lcom/julysystems/appx/AppX;

    iget-object v1, p2, Lcom/julysystems/appx/AppXPageView;->linearLayout:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/julysystems/appx/AppXPageData;->viewElements:Ljava/util/List;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/julysystems/appx/AppX;->addComponents(Landroid/widget/LinearLayout;Landroid/content/Context;Ljava/util/List;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageActivity;)V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/julysystems/appx/AppXPageData;->loaded:Z

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/julysystems/appx/AppXPageData;->preloaded:Z

    .line 107
    :cond_1
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearPageViewRef()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageData;->viewElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 172
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageData;->data:[B

    return-object v0
.end method

.method public getDoc()Lorg/w3c/dom/Document;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 125
    iget-boolean v1, p0, Lcom/julysystems/appx/AppXPageData;->error:Z

    if-eqz v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-object v0

    .line 127
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/julysystems/appx/AppXPageData;->loaded:Z

    .line 128
    iget-object v1, p0, Lcom/julysystems/appx/AppXPageData;->doc:Lorg/w3c/dom/Document;

    if-eqz v1, :cond_2

    .line 129
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageData;->doc:Lorg/w3c/dom/Document;

    goto :goto_0

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/julysystems/appx/AppXPageData;->docRef:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/julysystems/appx/AppXPageData;->docRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Document;

    move-object v0, v1

    .line 131
    .local v0, "pageDoc":Lorg/w3c/dom/Document;
    :cond_3
    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXPageData;->readData()V

    .line 135
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageData;->doc:Lorg/w3c/dom/Document;

    .line 136
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXPageData;->releaseReferences()V

    goto :goto_0
.end method

.method public getPageView()Lcom/julysystems/appx/AppXPageView;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageData;->pageViewRef:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/julysystems/appx/AppXPageData;->pageViewRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/julysystems/appx/AppXPageView;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public preloadComponents()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/julysystems/appx/AppXPageData;->doc:Lorg/w3c/dom/Document;

    if-eqz v1, :cond_2

    .line 71
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/julysystems/appx/AppXPageData;->preloaded:Z

    .line 72
    iget-object v2, p0, Lcom/julysystems/appx/AppXPageData;->viewElements:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :try_start_1
    iget-boolean v1, p0, Lcom/julysystems/appx/AppXPageData;->preloaded:Z

    if-nez v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/julysystems/appx/AppXPageData;->viewElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 75
    sget-object v1, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 76
    sget-object v1, Lcom/julysystems/appx/AppXConstants;->appXEngine:Lcom/julysystems/appx/AppX;

    sget-object v3, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/julysystems/appx/AppXPageData;->viewElements:Ljava/util/List;

    iget-object v5, p0, Lcom/julysystems/appx/AppXPageData;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5, p0}, Lcom/julysystems/appx/AppX;->preloadComponents(Landroid/content/Context;Ljava/util/List;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;)V

    .line 77
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/julysystems/appx/AppXPageData;->preloaded:Z

    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/julysystems/appx/AppXPageData;->loaded:Z

    .line 72
    :cond_1
    monitor-exit v2

    .line 87
    :cond_2
    :goto_0
    return-void

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Error in preloading components"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    iput-boolean v6, p0, Lcom/julysystems/appx/AppXPageData;->error:Z

    goto :goto_0
.end method

.method public readData()V
    .locals 8

    .prologue
    .line 44
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 45
    .local v2, "start":J
    new-instance v0, Lcom/julysystems/appx/AppXRenderDataInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, Lcom/julysystems/appx/AppXPageData;->data:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v4}, Lcom/julysystems/appx/AppXRenderDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 46
    .local v0, "cdis":Lcom/julysystems/appx/AppXRenderDataInputStream;
    invoke-static {}, Lcom/julysystems/appx/AppXRenderRenderUtil;->getRenderUtil()Lcom/julysystems/appx/AppXRenderRenderUtil;

    move-result-object v4

    iput-object v4, p0, Lcom/julysystems/appx/AppXPageData;->renderUtil:Lcom/julysystems/appx/AppXRenderRenderUtil;

    .line 47
    iget-object v4, p0, Lcom/julysystems/appx/AppXPageData;->renderUtil:Lcom/julysystems/appx/AppXRenderRenderUtil;

    invoke-virtual {v4, v0}, Lcom/julysystems/appx/AppXRenderRenderUtil;->processHeader(Lcom/julysystems/appx/AppXRenderDataInputStream;)Z

    .line 48
    sget-boolean v4, Lcom/julysystems/appx/AppXUtils;->debug:Z

    if-eqz v4, :cond_0

    .line 49
    sget-object v4, Lcom/julysystems/appx/AppXUtils;->debugString:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "READ RENDER: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/julysystems/appx/AppXUtils;->debugString:Ljava/lang/String;

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 57
    :cond_0
    invoke-static {v0}, Lcom/julysystems/appx/AppXXMLUtils;->getDocument(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    iput-object v4, p0, Lcom/julysystems/appx/AppXPageData;->doc:Lorg/w3c/dom/Document;

    .line 58
    sget-boolean v4, Lcom/julysystems/appx/AppXUtils;->debug:Z

    if-eqz v4, :cond_1

    .line 59
    sget-object v4, Lcom/julysystems/appx/AppXUtils;->debugString:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "READ DOC: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/julysystems/appx/AppXUtils;->debugString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "cdis":Lcom/julysystems/appx/AppXRenderDataInputStream;
    .end local v2    # "start":J
    :cond_1
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Error in reading data"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/julysystems/appx/AppXPageData;->error:Z

    goto :goto_0
.end method

.method public releaseReferences()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    new-instance v0, Ljava/lang/ref/SoftReference;

    iget-object v1, p0, Lcom/julysystems/appx/AppXPageData;->doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/julysystems/appx/AppXPageData;->docRef:Ljava/lang/ref/SoftReference;

    .line 118
    iput-object v2, p0, Lcom/julysystems/appx/AppXPageData;->doc:Lorg/w3c/dom/Document;

    .line 119
    new-instance v0, Ljava/lang/ref/SoftReference;

    iget-object v1, p0, Lcom/julysystems/appx/AppXPageData;->renderUtil:Lcom/julysystems/appx/AppXRenderRenderUtil;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/julysystems/appx/AppXPageData;->renderUtilRef:Ljava/lang/ref/SoftReference;

    .line 120
    iput-object v2, p0, Lcom/julysystems/appx/AppXPageData;->renderUtil:Lcom/julysystems/appx/AppXRenderRenderUtil;

    .line 121
    iput-object v2, p0, Lcom/julysystems/appx/AppXPageData;->pageViewRef:Ljava/lang/ref/SoftReference;

    .line 122
    return-void
.end method

.method public setPageView(Lcom/julysystems/appx/AppXPageView;)V
    .locals 1
    .param p1, "pageView"    # Lcom/julysystems/appx/AppXPageView;

    .prologue
    .line 167
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/julysystems/appx/AppXPageData;->pageViewRef:Ljava/lang/ref/SoftReference;

    .line 168
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageData;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageData;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 151
    return-void
.end method
