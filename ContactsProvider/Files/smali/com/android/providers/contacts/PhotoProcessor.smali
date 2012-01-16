.class final Lcom/android/providers/contacts/PhotoProcessor;
.super Ljava/lang/Object;
.source "PhotoProcessor.java"


# instance fields
.field private final sT:I

.field private final sU:I

.field private final sV:Z

.field private final sW:Landroid/graphics/Bitmap;

.field private sX:Landroid/graphics/Bitmap;

.field private sY:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/PhotoProcessor;-><init>(Landroid/graphics/Bitmap;IIZ)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/providers/contacts/PhotoProcessor;->sW:Landroid/graphics/Bitmap;

    .line 77
    iput p2, p0, Lcom/android/providers/contacts/PhotoProcessor;->sT:I

    .line 78
    iput p3, p0, Lcom/android/providers/contacts/PhotoProcessor;->sU:I

    .line 79
    iput-boolean p4, p0, Lcom/android/providers/contacts/PhotoProcessor;->sV:Z

    .line 80
    invoke-direct {p0}, Lcom/android/providers/contacts/PhotoProcessor;->fx()V

    .line 81
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 59
    array-length v0, p1

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/android/providers/contacts/PhotoProcessor;-><init>(Landroid/graphics/Bitmap;IIZ)V

    .line 61
    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/providers/contacts/PhotoProcessor;-><init>(Landroid/graphics/Bitmap;IIZ)V

    .line 98
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)[B
    .locals 3
    .parameter

    .prologue
    .line 151
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 152
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5f

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    .line 153
    if-nez v1, :cond_0

    .line 154
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to compress image"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 157
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 158
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private aE(I)Landroid/graphics/Bitmap;
    .locals 11
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 121
    iget-object v5, p0, Lcom/android/providers/contacts/PhotoProcessor;->sW:Landroid/graphics/Bitmap;

    .line 122
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->sW:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 123
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->sW:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 126
    iget-boolean v1, p0, Lcom/android/providers/contacts/PhotoProcessor;->sV:Z

    if-eqz v1, :cond_3

    if-eq v4, v0, :cond_3

    .line 128
    if-le v0, v4, :cond_1

    .line 129
    sub-int/2addr v0, v4

    div-int/lit8 v2, v0, 0x2

    move v1, v6

    move v3, v4

    .line 136
    :goto_0
    int-to-float v0, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v0, v7

    .line 137
    float-to-double v7, v0

    const-wide/high16 v9, 0x3ff0

    cmpg-double v7, v7, v9

    if-ltz v7, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_2

    .line 139
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 140
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 141
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->sW:Landroid/graphics/Bitmap;

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    :goto_1
    return-object v0

    .line 132
    :cond_1
    sub-int v1, v4, v0

    div-int/lit8 v1, v1, 0x2

    move v2, v6

    move v4, v0

    move v3, v0

    .line 133
    goto :goto_0

    :cond_2
    move-object v0, v5

    goto :goto_1

    :cond_3
    move v2, v6

    move v1, v6

    move v3, v4

    move v4, v0

    goto :goto_0
.end method

.method private fx()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->sW:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid image file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    iget v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->sT:I

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/PhotoProcessor;->aE(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->sX:Landroid/graphics/Bitmap;

    .line 109
    iget v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->sU:I

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/PhotoProcessor;->aE(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->sY:Landroid/graphics/Bitmap;

    .line 110
    return-void
.end method


# virtual methods
.method public fA()[B
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->sY:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/PhotoProcessor;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method

.method public fB()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->sU:I

    return v0
.end method

.method public fy()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->sX:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public fz()[B
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->sX:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/PhotoProcessor;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method
