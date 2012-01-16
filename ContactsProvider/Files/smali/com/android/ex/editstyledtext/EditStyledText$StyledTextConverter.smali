.class Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;
.super Ljava/lang/Object;
.source "EditStyledText.java"


# instance fields
.field private cn:Lcom/android/ex/editstyledtext/EditStyledText;

.field final synthetic jk:Lcom/android/ex/editstyledtext/EditStyledText;

.field private ve:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;


# direct methods
.method public constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1870
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->jk:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1871
    iput-object p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    .line 1872
    iput-object p3, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->ve:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;

    .line 1873
    return-void
.end method

.method static synthetic a(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;)Lcom/android/ex/editstyledtext/EditStyledText;
    .locals 1
    .parameter

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->cn:Lcom/android/ex/editstyledtext/EditStyledText;

    return-object v0
.end method
