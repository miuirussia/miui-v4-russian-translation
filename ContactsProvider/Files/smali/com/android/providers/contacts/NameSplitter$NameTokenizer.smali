.class Lcom/android/providers/contacts/NameSplitter$NameTokenizer;
.super Ljava/util/StringTokenizer;
.source "NameSplitter.java"


# instance fields
.field private final qW:[Ljava/lang/String;

.field private qX:I

.field private qY:I

.field private qZ:I

.field private ra:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 226
    const-string v0, " .,"

    invoke-direct {p0, p1, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 228
    new-array v0, v5, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->qW:[Ljava/lang/String;

    .line 232
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->ra:I

    if-ge v0, v5, :cond_4

    .line 233
    invoke-virtual {p0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 235
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 236
    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    .line 241
    :cond_1
    iget v1, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->ra:I

    if-lez v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2

    .line 242
    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->qX:I

    iget v1, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->ra:I

    add-int/lit8 v1, v1, -0x1

    shl-int v1, v4, v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->qX:I

    goto :goto_0

    .line 243
    :cond_2
    iget v1, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->ra:I

    if-lez v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    .line 244
    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->qY:I

    iget v1, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->ra:I

    add-int/lit8 v1, v1, -0x1

    shl-int v1, v4, v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->qY:I

    goto :goto_0

    .line 246
    :cond_3
    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->qW:[Ljava/lang/String;

    iget v2, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->ra:I

    aput-object v0, v1, v2

    .line 247
    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->ra:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->ra:I

    goto :goto_0

    .line 250
    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I
    .locals 1
    .parameter

    .prologue
    .line 218
    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->qZ:I

    return v0
.end method

.method static synthetic a(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 218
    iput p1, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->ra:I

    return p1
.end method

.method static synthetic b(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I
    .locals 1
    .parameter

    .prologue
    .line 218
    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->ra:I

    return v0
.end method

.method static synthetic b(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 218
    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->qZ:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->qZ:I

    return v0
.end method

.method static synthetic c(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->qW:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I
    .locals 2
    .parameter

    .prologue
    .line 218
    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->qZ:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->qZ:I

    return v0
.end method

.method static synthetic e(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I
    .locals 2
    .parameter

    .prologue
    .line 218
    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->ra:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->ra:I

    return v0
.end method


# virtual methods
.method public ay(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 256
    iget v1, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->qX:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public az(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 263
    iget v1, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->qY:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
