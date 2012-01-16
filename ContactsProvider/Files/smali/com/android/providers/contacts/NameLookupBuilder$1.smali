.class Lcom/android/providers/contacts/NameLookupBuilder$1;
.super Ljava/lang/Object;
.source "NameLookupBuilder.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic fq:Lcom/android/providers/contacts/NameLookupBuilder;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/NameLookupBuilder;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/providers/contacts/NameLookupBuilder$1;->fq:Lcom/android/providers/contacts/NameLookupBuilder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 114
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/NameLookupBuilder$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
