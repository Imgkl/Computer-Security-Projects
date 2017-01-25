.class Lcom/julysystems/appx/AppXXMLUtils;
.super Ljava/lang/Object;
.source "AppXXMLUtils.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static db:Ljavax/xml/parsers/DocumentBuilder;

.field private static dbf:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "XMLUtils"

    sput-object v0, Lcom/julysystems/appx/AppXXMLUtils;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 5
    .param p0, "element"    # Lorg/w3c/dom/Element;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 181
    if-nez p0, :cond_0

    move-object v0, v3

    .line 189
    :goto_0
    return-object v0

    .line 183
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 184
    .local v1, "childNodes":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lt v2, v4, :cond_1

    move-object v0, v3

    .line 189
    goto :goto_0

    .line 185
    :cond_1
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 186
    .local v0, "childNode":Lorg/w3c/dom/Node;
    instance-of v4, v0, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 187
    check-cast v0, Lorg/w3c/dom/Element;

    goto :goto_0

    .line 184
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected static getChildElements(Lorg/w3c/dom/Element;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "element"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    if-nez p0, :cond_1

    .line 132
    const/4 v2, 0x0

    .line 140
    :cond_0
    return-object v2

    .line 133
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 134
    .local v1, "childNodes":Lorg/w3c/dom/NodeList;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v2, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 136
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 137
    .local v0, "childNode":Lorg/w3c/dom/Node;
    instance-of v4, v0, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_2

    .line 138
    check-cast v0, Lorg/w3c/dom/Element;

    .end local v0    # "childNode":Lorg/w3c/dom/Node;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected static getChildElements(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "element"    # Lorg/w3c/dom/Element;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    if-nez p0, :cond_1

    .line 112
    const/4 v2, 0x0

    .line 120
    :cond_0
    return-object v2

    .line 113
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 114
    .local v1, "childNodes":Lorg/w3c/dom/NodeList;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v2, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 116
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 117
    .local v0, "childNode":Lorg/w3c/dom/Node;
    instance-of v4, v0, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 118
    check-cast v0, Lorg/w3c/dom/Element;

    .end local v0    # "childNode":Lorg/w3c/dom/Node;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected static getChildWithAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 6
    .param p0, "element"    # Lorg/w3c/dom/Element;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attributeName"    # Ljava/lang/String;
    .param p3, "attributeValue"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 207
    if-nez p0, :cond_0

    move-object v1, v4

    .line 218
    :goto_0
    return-object v1

    .line 209
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 210
    .local v2, "childNodes":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lt v3, v5, :cond_1

    move-object v1, v4

    .line 218
    goto :goto_0

    .line 211
    :cond_1
    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 212
    .local v1, "childNode":Lorg/w3c/dom/Node;
    instance-of v5, v1, Lorg/w3c/dom/Element;

    if-eqz v5, :cond_2

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 213
    check-cast v0, Lorg/w3c/dom/Element;

    .line 214
    .local v0, "childElement":Lorg/w3c/dom/Element;
    invoke-interface {v0, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 215
    check-cast v1, Lorg/w3c/dom/Element;

    goto :goto_0

    .line 210
    .end local v0    # "childElement":Lorg/w3c/dom/Element;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method protected static getChildWithAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/w3c/dom/Element;
    .locals 6
    .param p0, "element"    # Lorg/w3c/dom/Element;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attributeName"    # Ljava/lang/String;
    .param p3, "attributeValue"    # Ljava/lang/String;
    .param p4, "deepSearch"    # Z

    .prologue
    const/4 v4, 0x0

    .line 222
    if-nez p0, :cond_0

    move-object v1, v4

    .line 235
    :goto_0
    return-object v1

    .line 224
    :cond_0
    if-nez p4, :cond_1

    .line 225
    invoke-static {p0, p1, p2, p3}, Lcom/julysystems/appx/AppXXMLUtils;->getChildWithAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    goto :goto_0

    .line 226
    :cond_1
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 227
    .local v2, "childNodes":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lt v3, v5, :cond_2

    move-object v1, v4

    .line 235
    goto :goto_0

    .line 228
    :cond_2
    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 229
    .local v1, "childNode":Lorg/w3c/dom/Node;
    instance-of v5, v1, Lorg/w3c/dom/Element;

    if-eqz v5, :cond_3

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v0, v1

    .line 230
    check-cast v0, Lorg/w3c/dom/Element;

    .line 231
    .local v0, "childElement":Lorg/w3c/dom/Element;
    invoke-interface {v0, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 232
    check-cast v1, Lorg/w3c/dom/Element;

    goto :goto_0

    .line 227
    .end local v0    # "childElement":Lorg/w3c/dom/Element;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method protected static getChildren(Lorg/w3c/dom/Element;Ljava/lang/String;)[Lorg/w3c/dom/Element;
    .locals 6
    .param p0, "element"    # Lorg/w3c/dom/Element;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    if-nez p0, :cond_1

    .line 89
    const/4 v2, 0x0

    .line 98
    :cond_0
    return-object v2

    .line 90
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 91
    .local v1, "childNodes":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 92
    .local v4, "length":I
    new-array v2, v4, [Lorg/w3c/dom/Element;

    .line 93
    .local v2, "elements":[Lorg/w3c/dom/Element;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 94
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 95
    .local v0, "childNode":Lorg/w3c/dom/Node;
    instance-of v5, v0, Lorg/w3c/dom/Element;

    if-eqz v5, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 96
    check-cast v0, Lorg/w3c/dom/Element;

    .end local v0    # "childNode":Lorg/w3c/dom/Node;
    aput-object v0, v2, v3

    .line 93
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected static getChildrenWithAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;
    .locals 7
    .param p0, "element"    # Lorg/w3c/dom/Element;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attributeName"    # Ljava/lang/String;
    .param p3, "attributeValue"    # Ljava/lang/String;

    .prologue
    .line 156
    if-nez p0, :cond_1

    .line 157
    const/4 v3, 0x0

    .line 169
    :cond_0
    return-object v3

    .line 158
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 159
    .local v2, "childNodes":Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 160
    .local v5, "length":I
    new-array v3, v5, [Lorg/w3c/dom/Element;

    .line 161
    .local v3, "elements":[Lorg/w3c/dom/Element;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 162
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 163
    .local v1, "childNode":Lorg/w3c/dom/Node;
    instance-of v6, v1, Lorg/w3c/dom/Element;

    if-eqz v6, :cond_2

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v0, v1

    .line 164
    check-cast v0, Lorg/w3c/dom/Element;

    .line 165
    .local v0, "childElement":Lorg/w3c/dom/Element;
    invoke-interface {v0, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 166
    aput-object v0, v3, v4

    .line 161
    .end local v0    # "childElement":Lorg/w3c/dom/Element;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected static getDocument(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 43
    :try_start_0
    sget-object v2, Lcom/julysystems/appx/AppXXMLUtils;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/julysystems/appx/AppXXMLUtils;->db:Ljavax/xml/parsers/DocumentBuilder;

    if-nez v2, :cond_1

    .line 44
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    sput-object v2, Lcom/julysystems/appx/AppXXMLUtils;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 45
    sget-object v2, Lcom/julysystems/appx/AppXXMLUtils;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    sput-object v2, Lcom/julysystems/appx/AppXXMLUtils;->db:Ljavax/xml/parsers/DocumentBuilder;

    .line 47
    :cond_1
    sget-object v2, Lcom/julysystems/appx/AppXXMLUtils;->db:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v2, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 56
    :goto_0
    return-object v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    sget-object v2, Lcom/julysystems/appx/AppXXMLUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ParserConfigurationException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/julysystems/appx/AppXXMLUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IOException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 55
    .local v0, "e":Lorg/xml/sax/SAXException;
    sget-object v2, Lcom/julysystems/appx/AppXXMLUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SAXException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static getDocument([B)Lorg/w3c/dom/Document;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 33
    if-eqz p0, :cond_0

    array-length v1, p0

    if-eqz v1, :cond_0

    .line 34
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 35
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lcom/julysystems/appx/AppXXMLUtils;->getDocument(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 37
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static getNodeText(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 4
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 68
    if-nez p0, :cond_0

    .line 69
    const/4 v3, 0x0

    .line 76
    :goto_0
    return-object v3

    .line 70
    :cond_0
    instance-of v3, p0, Lorg/w3c/dom/Text;

    if-eqz v3, :cond_1

    .line 71
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 72
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 74
    .local v0, "childNodes":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 75
    :cond_2
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-static {v3}, Lcom/julysystems/appx/AppXXMLUtils;->getNodeText(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
