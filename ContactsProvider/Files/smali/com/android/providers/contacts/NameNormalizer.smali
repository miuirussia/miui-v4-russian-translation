.class public Lcom/android/providers/contacts/NameNormalizer;
.super Ljava/lang/Object;
.source "NameNormalizer.java"


# static fields
.field private static final b:Ljava/text/RuleBasedCollator;

.field private static final c:Ljava/text/RuleBasedCollator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 31
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    sput-object v0, Lcom/android/providers/contacts/NameNormalizer;->b:Ljava/text/RuleBasedCollator;

    .line 32
    sget-object v0, Lcom/android/providers/contacts/NameNormalizer;->b:Ljava/text/RuleBasedCollator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/RuleBasedCollator;->setStrength(I)V

    .line 33
    sget-object v0, Lcom/android/providers/contacts/NameNormalizer;->b:Ljava/text/RuleBasedCollator;

    invoke-virtual {v0, v2}, Ljava/text/RuleBasedCollator;->setDecomposition(I)V

    .line 38
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    sput-object v0, Lcom/android/providers/contacts/NameNormalizer;->c:Ljava/text/RuleBasedCollator;

    .line 39
    sget-object v0, Lcom/android/providers/contacts/NameNormalizer;->c:Ljava/text/RuleBasedCollator;

    invoke-virtual {v0, v2}, Ljava/text/RuleBasedCollator;->setStrength(I)V

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-static {p0}, Lcom/android/providers/contacts/NameNormalizer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {p1}, Lcom/android/providers/contacts/NameNormalizer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    sget-object v0, Lcom/android/providers/contacts/NameNormalizer;->c:Ljava/text/RuleBasedCollator;

    invoke-virtual {v0, v1, v2}, Ljava/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    neg-int v0, v0

    .line 66
    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v0, v1

    move v2, v1

    .line 78
    :goto_0
    array-length v3, v4

    if-ge v0, v3, :cond_1

    .line 79
    aget-char v5, v4, v0

    .line 80
    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    add-int/lit8 v3, v2, 0x1

    aput-char v5, v4, v2

    move v2, v3

    .line 78
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_1
    array-length v0, v4

    if-eq v2, v0, :cond_2

    .line 86
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 89
    :cond_2
    return-object p0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 47
    sget-object v0, Lcom/android/providers/contacts/NameNormalizer;->b:Ljava/text/RuleBasedCollator;

    invoke-static {p0}, Lcom/android/providers/contacts/NameNormalizer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/RuleBasedCollator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/providers/contacts/Hex;->a([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
