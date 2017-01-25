.class Lcom/julysystems/appx/AppXFormData;
.super Ljava/lang/Object;
.source "AppXFormData.java"


# static fields
.field public static final BOUNDARY:Ljava/lang/String; = "----------V2ymHFg03ehbqgZCaKO6jy"

.field public static final SUBMISSION_TYPE_FORM:Ljava/lang/String; = "multipart"

.field public static final SUBMISSION_TYPE_POST:Ljava/lang/String; = "urlencoded"

.field private static mimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fieldName:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;

.field private params:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/julysystems/appx/AppXFormData;->mimeMap:Ljava/util/HashMap;

    .line 21
    sget-object v0, Lcom/julysystems/appx/AppXFormData;->mimeMap:Ljava/util/HashMap;

    const-string v1, "mov"

    const-string v2, "video/quicktime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/julysystems/appx/AppXFormData;->mimeMap:Ljava/util/HashMap;

    const-string v1, "movie"

    const-string v2, "video/x-sgi-movie"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/julysystems/appx/AppXFormData;->mimeMap:Ljava/util/HashMap;

    const-string v1, "mp2"

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/julysystems/appx/AppXFormData;->mimeMap:Ljava/util/HashMap;

    const-string v1, "mp3"

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/julysystems/appx/AppXFormData;->mimeMap:Ljava/util/HashMap;

    const-string v1, "mp4"

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/julysystems/appx/AppXFormData;->mimeMap:Ljava/util/HashMap;

    const-string v1, "mpe"

    const-string v2, "video/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/julysystems/appx/AppXFormData;->mimeMap:Ljava/util/HashMap;

    const-string v1, "3gp"

    const-string v2, "video/3gpp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/julysystems/appx/AppXFormData;->mimeMap:Ljava/util/HashMap;

    const-string v1, "3gpp"

    const-string v2, "video/3gpp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/julysystems/appx/AppXFormData;->mimeMap:Ljava/util/HashMap;

    const-string v1, "bmp"

    const-string v2, "image/bmp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/julysystems/appx/AppXFormData;->mimeMap:Ljava/util/HashMap;

    const-string v1, "cgm"

    const-string v2, "image/cgm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/julysystems/appx/AppXFormData;->mimeMap:Ljava/util/HashMap;

    const-string v1, "gif"

    const-string v2, "image/gif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/julysystems/appx/AppXFormData;->mimeMap:Ljava/util/HashMap;

    const-string v1, "ico"

    const-string v2, "image/x-icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/julysystems/appx/AppXFormData;->mimeMap:Ljava/util/HashMap;

    const-string v1, "ief"

    const-string v2, "image/ief"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/julysystems/appx/AppXFormData;->mimeMap:Ljava/util/HashMap;

    const-string v1, "jp2"

    const-string v2, "image/jp2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/julysystems/appx/AppXFormData;->mimeMap:Ljava/util/HashMap;

    const-string v1, "jpe"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/julysystems/appx/AppXFormData;->mimeMap:Ljava/util/HashMap;

    const-string v1, "jpeg"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/julysystems/appx/AppXFormData;->mimeMap:Ljava/util/HashMap;

    const-string v1, "jpg"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/julysystems/appx/AppXFormData;->mimeMap:Ljava/util/HashMap;

    const-string v1, "pct"

    const-string v2, "image/pict"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/julysystems/appx/AppXFormData;->mimeMap:Ljava/util/HashMap;

    const-string v1, "pict"

    const-string v2, "image/pict"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/julysystems/appx/AppXFormData;->mimeMap:Ljava/util/HashMap;

    const-string v1, "png"

    const-string v2, "image/png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/julysystems/appx/AppXFormData;->params:Ljava/util/Hashtable;

    .line 16
    iput-object v3, p0, Lcom/julysystems/appx/AppXFormData;->fieldName:Ljava/lang/String;

    .line 17
    iput-object v3, p0, Lcom/julysystems/appx/AppXFormData;->mimeType:Ljava/lang/String;

    .line 18
    iput-object v3, p0, Lcom/julysystems/appx/AppXFormData;->filePath:Ljava/lang/String;

    .line 19
    iput-object v3, p0, Lcom/julysystems/appx/AppXFormData;->fileName:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/julysystems/appx/AppXFormData;->fieldName:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/julysystems/appx/AppXFormData;->filePath:Ljava/lang/String;

    .line 48
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/julysystems/appx/AppXFormData;->filePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/julysystems/appx/AppXFormData;->fileName:Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Lcom/julysystems/appx/AppXFormData;->getExtension()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "extn":Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v2, Lcom/julysystems/appx/AppXFormData;->mimeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_0
    iput-object v2, p0, Lcom/julysystems/appx/AppXFormData;->mimeType:Ljava/lang/String;

    .line 52
    return-void

    .line 51
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method private getExtension()Ljava/lang/String;
    .locals 4

    .prologue
    .line 55
    iget-object v1, p0, Lcom/julysystems/appx/AppXFormData;->fileName:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 56
    .local v0, "pos":I
    if-lez v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/julysystems/appx/AppXFormData;->fileName:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/julysystems/appx/AppXFormData;->fileName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 59
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/julysystems/appx/AppXFormData;->params:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public getBoundaryMessage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 67
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "--"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "----------V2ymHFg03ehbqgZCaKO6jy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 68
    .local v2, "res":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/julysystems/appx/AppXFormData;->params:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 69
    .local v1, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_0

    .line 79
    const-string v4, "Content-Disposition: form-data; name=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    iget-object v4, p0, Lcom/julysystems/appx/AppXFormData;->fieldName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const-string v4, "\"; filename=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    iget-object v4, p0, Lcom/julysystems/appx/AppXFormData;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v4, "\"\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const-string v4, "Content-Type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    iget-object v4, p0, Lcom/julysystems/appx/AppXFormData;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\r\n\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 70
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/julysystems/appx/AppXFormData;->params:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 72
    .local v3, "value":Ljava/lang/String;
    const-string v4, "Content-Disposition: form-data; name=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v4, "\"\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v4, "--"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "----------V2ymHFg03ehbqgZCaKO6jy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getEndBoundary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "\r\n------------V2ymHFg03ehbqgZCaKO6jy--\r\n"

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/julysystems/appx/AppXFormData;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/julysystems/appx/AppXFormData;->mimeType:Ljava/lang/String;

    return-object v0
.end method
