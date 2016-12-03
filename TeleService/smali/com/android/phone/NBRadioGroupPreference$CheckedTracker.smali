.class Lcom/android/phone/NBRadioGroupPreference$CheckedTracker;
.super Ljava/lang/Object;
.source "NBRadioGroupPreference.java"

# interfaces
.implements Lcom/android/phone/NBRadioButtonPreference$OnCheckedChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBRadioGroupPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBRadioGroupPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/NBRadioGroupPreference;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBRadioGroupPreference$CheckedTracker;->this$0:Lcom/android/phone/NBRadioGroupPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NBRadioGroupPreference;Lcom/android/phone/NBRadioGroupPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/NBRadioGroupPreference;
    .param p2, "x1"    # Lcom/android/phone/NBRadioGroupPreference$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBRadioGroupPreference$CheckedTracker;-><init>(Lcom/android/phone/NBRadioGroupPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/android/phone/NBRadioButtonPreference;Z)V
    .locals 3
    .param p1, "preference"    # Lcom/android/phone/NBRadioButtonPreference;
    .param p2, "checked"    # Z

    .prologue
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBRadioGroupPreference$CheckedTracker;->this$0:Lcom/android/phone/NBRadioGroupPreference;

    iget-object v1, p0, Lcom/android/phone/NBRadioGroupPreference$CheckedTracker;->this$0:Lcom/android/phone/NBRadioGroupPreference;

    # getter for: Lcom/android/phone/NBRadioGroupPreference;->mCheckedKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/NBRadioGroupPreference;->access$100(Lcom/android/phone/NBRadioGroupPreference;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/android/phone/NBRadioGroupPreference;->setCheckedStateForPreference(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/NBRadioGroupPreference;->access$200(Lcom/android/phone/NBRadioGroupPreference;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/NBRadioGroupPreference$CheckedTracker;->this$0:Lcom/android/phone/NBRadioGroupPreference;

    invoke-virtual {p1}, Lcom/android/phone/NBRadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/NBRadioGroupPreference;->setCheckedKey(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NBRadioGroupPreference;->access$300(Lcom/android/phone/NBRadioGroupPreference;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
