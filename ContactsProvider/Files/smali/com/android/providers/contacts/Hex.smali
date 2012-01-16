.class public Lcom/android/providers/contacts/Hex;
.super Ljava/lang/Object;
.source "Hex.java"


# static fields
.field private static final dc:[C

.field private static final dd:[C

.field private static final de:[C

.field private static final df:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x100

    const/4 v0, 0x0

    .line 25
    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/providers/contacts/Hex;->dc:[C

    .line 30
    new-array v1, v5, [C

    sput-object v1, Lcom/android/providers/contacts/Hex;->dd:[C

    .line 31
    new-array v1, v5, [C

    sput-object v1, Lcom/android/providers/contacts/Hex;->de:[C

    move v1, v0

    .line 33
    :goto_0
    if-ge v1, v5, :cond_0

    .line 34
    sget-object v2, Lcom/android/providers/contacts/Hex;->dd:[C

    sget-object v3, Lcom/android/providers/contacts/Hex;->dc:[C

    shr-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    aput-char v3, v2, v1

    .line 35
    sget-object v2, Lcom/android/providers/contacts/Hex;->de:[C

    sget-object v3, Lcom/android/providers/contacts/Hex;->dc:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    aput-char v3, v2, v1

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_0
    const/16 v1, 0x67

    new-array v1, v1, [B

    sput-object v1, Lcom/android/providers/contacts/Hex;->df:[B

    move v1, v0

    .line 41
    :goto_1
    const/16 v2, 0x46

    if-gt v1, v2, :cond_1

    .line 42
    sget-object v2, Lcom/android/providers/contacts/Hex;->df:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 44
    :goto_2
    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    .line 45
    sget-object v2, Lcom/android/providers/contacts/Hex;->df:[B

    add-int/lit8 v3, v1, 0x30

    aput-byte v1, v2, v3

    .line 44
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_2

    .line 47
    :cond_2
    :goto_3
    const/4 v1, 0x6

    if-ge v0, v1, :cond_3

    .line 48
    sget-object v1, Lcom/android/providers/contacts/Hex;->df:[B

    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 49
    sget-object v1, Lcom/android/providers/contacts/Hex;->df:[B

    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 47
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_3

    .line 51
    :cond_3
    return-void

    .line 25
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BZ)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 59
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [C

    move v0, v1

    move v2, v1

    .line 62
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_0

    .line 63
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    .line 64
    if-nez v4, :cond_1

    if-eqz p1, :cond_1

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 68
    :cond_1
    add-int/lit8 v5, v2, 0x1

    sget-object v6, Lcom/android/providers/contacts/Hex;->dd:[C

    aget-char v6, v6, v4

    aput-char v6, v3, v2

    .line 69
    add-int/lit8 v2, v5, 0x1

    sget-object v6, Lcom/android/providers/contacts/Hex;->de:[C

    aget-char v4, v6, v4

    aput-char v4, v3, v5

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static n(Ljava/lang/String;)[B
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0x66

    const/4 v9, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 81
    and-int/lit8 v2, v4, 0x1

    if-eqz v2, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Odd number of characters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    shr-int/lit8 v2, v4, 0x1

    new-array v5, v2, [B

    move v2, v1

    move v3, v1

    .line 87
    :goto_0
    if-ge v2, v4, :cond_4

    .line 88
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 89
    if-le v2, v10, :cond_2

    .line 115
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hexadecimal digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_2
    sget-object v7, Lcom/android/providers/contacts/Hex;->df:[B

    aget-byte v7, v7, v2

    .line 95
    if-eq v7, v9, :cond_1

    .line 100
    add-int/lit8 v2, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 101
    if-gt v6, v10, :cond_1

    .line 106
    sget-object v8, Lcom/android/providers/contacts/Hex;->df:[B

    aget-byte v6, v8, v6

    .line 107
    if-eq v6, v9, :cond_1

    .line 112
    shl-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    :cond_3
    return-object v5

    :cond_4
    move v0, v1

    goto :goto_1
.end method
