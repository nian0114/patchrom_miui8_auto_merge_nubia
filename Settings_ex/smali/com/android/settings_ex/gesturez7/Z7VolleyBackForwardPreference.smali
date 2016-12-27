.class public Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;
.super Landroid/preference/SeekBarPreference;
.source "Z7VolleyBackForwardPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private text05:Landroid/widget/TextView;

.field private text10:Landroid/widget/TextView;

.field private text15:Landroid/widget/TextView;

.field private text20:Landroid/widget/TextView;

.field private text25:Landroid/widget/TextView;

.field private text30:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-object p1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->mContext:Landroid/content/Context;

    .line 32
    const v0, 0x7f0401fc

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->setLayoutResource(I)V

    .line 33
    return-void
.end method

.method private getBackForwardLevel()I
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_bf_level"

    const/16 v2, 0x1388

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setBackForwardLevel(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_bf_level"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "hanchuang"

    const-string v2, "eeeee"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private timeoutToProgress(I)I
    .locals 3
    .param p1, "timeout"    # I

    .prologue
    const/4 v0, 0x0

    .line 73
    const/16 v1, 0x1388

    if-ne p1, v1, :cond_1

    .line 74
    const-string v1, "hanchuang"

    const-string v2, "timeout == 5 * 1000"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    const/16 v1, 0x2710

    if-ne p1, v1, :cond_2

    .line 77
    const-string v0, "hanchuang"

    const-string v1, "timeout == 10 * 1000"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    :cond_2
    const/16 v1, 0x3a98

    if-ne p1, v1, :cond_3

    .line 80
    const-string v0, "hanchuang"

    const-string v1, "timeout == 15 * 1000"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x2

    goto :goto_0

    .line 82
    :cond_3
    const/16 v1, 0x4e20

    if-ne p1, v1, :cond_4

    .line 83
    const-string v0, "hanchuang"

    const-string v1, "timeout == 20 * 1000"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v0, 0x3

    goto :goto_0

    .line 85
    :cond_4
    const/16 v1, 0x61a8

    if-ne p1, v1, :cond_5

    .line 86
    const-string v0, "hanchuang"

    const-string v1, "timeout <= 25 * 1000"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x4

    goto :goto_0

    .line 88
    :cond_5
    const/16 v1, 0x7530

    if-ne p1, v1, :cond_0

    .line 89
    const-string v0, "hanchuang"

    const-string v1, "timeout <= 30 * 1000"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v0, 0x5

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v3, 0x41a00000    # 20.0f

    .line 37
    const-string v0, "hanchuang"

    const-string v1, "onbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const v0, 0x7f12048b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->text05:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f12048c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->text10:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f12048d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->text15:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f12048e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->text20:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f12048f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->text25:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f120490

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->text30:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f1202a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 47
    const-string v0, "hanchuang"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBackForwardLevel()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->getBackForwardLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->getBackForwardLevel()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->timeoutToProgress(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 49
    invoke-direct {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->getBackForwardLevel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->timeoutToProgress(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 70
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->text05:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 54
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->text10:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 57
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->text15:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 60
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->text20:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 63
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->text25:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 66
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->text30:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 98
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 102
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/16 v3, 0x7530

    .line 105
    const-string v0, "hanchuang"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekBar.getProgress()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 138
    invoke-direct {p0, v3}, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->setBackForwardLevel(I)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->notifyChanged()V

    .line 141
    :goto_0
    return-void

    .line 108
    :pswitch_0
    const-string v0, "hanchuang"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->setBackForwardLevel(I)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->notifyChanged()V

    goto :goto_0

    .line 113
    :pswitch_1
    const-string v0, "hanchuang"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/16 v0, 0x2710

    invoke-direct {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->setBackForwardLevel(I)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->notifyChanged()V

    goto :goto_0

    .line 118
    :pswitch_2
    const-string v0, "hanchuang"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/16 v0, 0x3a98

    invoke-direct {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->setBackForwardLevel(I)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->notifyChanged()V

    goto :goto_0

    .line 123
    :pswitch_3
    const-string v0, "hanchuang"

    const-string v1, "3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/16 v0, 0x4e20

    invoke-direct {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->setBackForwardLevel(I)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->notifyChanged()V

    goto :goto_0

    .line 128
    :pswitch_4
    const-string v0, "hanchuang"

    const-string v1, "4"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/16 v0, 0x61a8

    invoke-direct {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->setBackForwardLevel(I)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->notifyChanged()V

    goto :goto_0

    .line 133
    :pswitch_5
    const-string v0, "hanchuang"

    const-string v1, "5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0, v3}, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->setBackForwardLevel(I)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings_ex/gesturez7/Z7VolleyBackForwardPreference;->notifyChanged()V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
