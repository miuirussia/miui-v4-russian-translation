.class public Lcom/android/providers/contacts/util/TypedUriMatcherImpl;
.super Ljava/lang/Object;
.source "TypedUriMatcherImpl.java"

# interfaces
.implements Lcom/android/providers/contacts/util/TypedUriMatcher;


# instance fields
.field private final jF:Ljava/lang/String;

.field private final jG:[Lcom/android/providers/contacts/util/UriType;

.field private final jH:Lcom/android/providers/contacts/util/UriType;

.field private final jI:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lcom/android/providers/contacts/util/UriType;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;->jF:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;->jG:[Lcom/android/providers/contacts/util/UriType;

    .line 35
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;->jI:Landroid/content/UriMatcher;

    .line 36
    const/4 v1, 0x0

    .line 37
    array-length v3, p2

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p2, v2

    .line 38
    invoke-interface {v1}, Lcom/android/providers/contacts/util/UriType;->fa()Ljava/lang/String;

    move-result-object v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    invoke-direct {p0, v4, v1}, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;->a(Ljava/lang/String;Lcom/android/providers/contacts/util/UriType;)V

    .line 37
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 42
    goto :goto_1

    .line 45
    :cond_1
    iput-object v0, p0, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;->jH:Lcom/android/providers/contacts/util/UriType;

    .line 46
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/android/providers/contacts/util/UriType;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;->jI:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;->jF:Ljava/lang/String;

    invoke-interface {p2}, Lcom/android/providers/contacts/util/UriType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    return-void
.end method


# virtual methods
.method public j(Landroid/net/Uri;)Lcom/android/providers/contacts/util/UriType;
    .locals 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;->jI:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 55
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;->jH:Lcom/android/providers/contacts/util/UriType;

    .line 58
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;->jG:[Lcom/android/providers/contacts/util/UriType;

    aget-object v0, v1, v0

    goto :goto_0
.end method
