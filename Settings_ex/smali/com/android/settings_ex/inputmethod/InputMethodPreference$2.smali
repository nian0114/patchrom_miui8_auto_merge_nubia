.class Lcom/android/settings_ex/inputmethod/InputMethodPreference$2;
.super Ljava/lang/Object;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/inputmethod/InputMethodPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/inputmethod/InputMethodPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference$2;->this$0:Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference$2;->this$0:Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    # invokes: Lcom/android/settings_ex/inputmethod/InputMethodPreference;->inputMethodSettings()V
    invoke-static {v0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->access$100(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V

    .line 145
    return-void
.end method
