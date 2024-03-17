function varargout = untitled1(varargin)
% UNTITLED1 MATLAB code for untitled1.fig
%      UNTITLED1, by itself, creates a new UNTITLED1 or raises the existing
%      singleton*.
%
%      H = UNTITLED1 returns the handle to a new UNTITLED1 or the handle to
%      the existing singleton*.
%
%      UNTITLED1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED1.M with the given input arguments.
%
%      UNTITLED1('Property','Value',...) creates a new UNTITLED1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled1

% Last Modified by GUIDE v2.5 25-Dec-2023 15:56:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled1_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled1_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before untitled1 is made visible.
function untitled1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled1 (see VARARGIN)

% Choose default command line output for untitled1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.



% --- Executes during object creation, after setting all properties.
function selected_image_CreateFcn(hObject, eventdata, handles)
% hObject    handle to selected_image (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate selected_image
axis off;


% --- Executes during object creation, after setting all properties.
function enhanced_image_CreateFcn(hObject, eventdata, handles)
% hObject    handle to enhanced_image (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate enhanced_image
axis off;


% --- Executes during object creation, after setting all properties.
function axes4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes4
axis off;


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1
%BackGround=imread("C:\Users\Shahd\Desktop\1703286925329.jpg");
%imshow(BackGround);


% --- Executes on button press in upload_image.
function upload_image_Callback(hObject, eventdata, handles)
% hObject    handle to upload_image (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.selected_image, 'Children'))
    cla(handles.selected_image, 'reset');
end

% Get the file name using uigetfile
filename = uigetfile();

% Check if the user pressed cancel in the file dialog
if isequal(filename, 0)
    return; % User canceled the operation
end

% Store the filename and image data in the handles structure
handles.filename = filename;
handles.a = imread(filename);

% Display the image in axes1
axes(handles.selected_image);
imshow(handles.a);

% Update the handles structure
guidata(hObject, handles);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in conversions.
function conversions_Callback(hObject, eventdata, handles)
% hObject    handle to conversions (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in histograms.
function histograms_Callback(hObject, eventdata, handles)
% hObject    handle to histograms (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in sharping.
function sharping_Callback(hObject, eventdata, handles)
% hObject    handle to sharping (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in smoothing.
function smoothing_Callback(hObject, eventdata, handles)
% hObject    handle to smoothing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in frequancy.
function frequancy_Callback(hObject, eventdata, handles)
% hObject    handle to frequancy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in average.
function average_Callback(hObject, eventdata, handles)
% hObject    handle to average (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
av = avg(handles.a);
handles.av = av;
axes(handles.enhanced_image);
imshow(av);


% --- Executes on button press in transformations.
function transformations_Callback(hObject, eventdata, handles)
% hObject    handle to transformations (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in rgb2gray.
function rgb2gray_Callback(hObject, eventdata, handles)
% hObject    handle to rgb2gray (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
r_g = rgb2g(handles.a,2);
handles.r_g = r_g;
axes(handles.enhanced_image);
imshow(r_g);





% --- Executes on button press in rgb2bi.
function rgb2bi_Callback(hObject, eventdata, handles)
% hObject    handle to rgb2bi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
r_b = rgb2bi(handles.a,100);
handles.r_b = r_b;
axes(handles.enhanced_image);
imshow(r_b);

% --- Executes on button press in gray2bi.
function gray2bi_Callback(hObject, eventdata, handles)
% hObject    handle to gray2bi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
r_b = gray2bi(handles.a,100);
handles.r_b = r_b;
axes(handles.enhanced_image);
imshow(r_b);




function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in histogram.
function histogram_Callback(hObject, eventdata, handles)
% hObject    handle to histogram (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end

im = (handles.a);
axes(handles.enhanced_image);
his(im);


% --- Executes on button press in equa_hist.
function equa_hist_Callback(hObject, eventdata, handles)
% hObject    handle to equa_hist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
eqhisto = (handles.a);
axes(handles.enhanced_image);
equal_histo(eqhisto);
% --- Executes on button press in highboost.
function highboost_Callback(hObject, eventdata, handles)
% hObject    handle to highboost (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
high = highboost(handles.a);
handles.high = high;
axes(handles.enhanced_image);
imshow(high);

% --- Executes on button press in laplacian.
function laplacian_Callback(hObject, eventdata, handles)
% hObject    handle to laplacian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
laplc = laplacian(handles.a);
handles.laplc = laplc;
axes(handles.enhanced_image);
imshow(laplc);

% --- Executes on button press in robertdl.
function robertdl_Callback(hObject, eventdata, handles)
% hObject    handle to robertdl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
robdl = robertdl(handles.a);
handles.robdl = robdl;
axes(handles.enhanced_image);
imshow(robdl);

% --- Executes on button press in sobeldl.
function sobeldl_Callback(hObject, eventdata, handles)
% hObject    handle to sobeldl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
sobdl = sobeldl(handles.a);
handles.sobdl = sobdl;
axes(handles.enhanced_image);
imshow(sobdl);


% --- Executes on button press in unsharp.
function unsharp_Callback(hObject, eventdata, handles)
% hObject    handle to unsharp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
unshr = unsharp(handles.a);
handles.unshr = unshr;
axes(handles.enhanced_image);
imshow(unshr);

% --- Executes on button press in robertdr.
function robertdr_Callback(hObject, eventdata, handles)
% hObject    handle to robertdr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
robdr = robertdr(handles.a);
handles.robdr = robdr;
axes(handles.enhanced_image);
imshow(robdr);


% --- Executes on button press in roberth.
function roberth_Callback(hObject, eventdata, handles)
% hObject    handle to roberth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
robh = roberth(handles.a);
handles.robh = robh;
axes(handles.enhanced_image);
imshow(robh);


% --- Executes on button press in robertv.
function robertv_Callback(hObject, eventdata, handles)
% hObject    handle to robertv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
robv = robertv(handles.a);
handles.robv = robv;
axes(handles.enhanced_image);
imshow(robv);

% --- Executes on button press in sobeldr.
function sobeldr_Callback(hObject, eventdata, handles)
% hObject    handle to sobeldr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
sobdr = sobeldr(handles.a);
handles.sobdr = sobdr;
axes(handles.enhanced_image);
imshow(sobdr);
% --- Executes on button press in sobelh.
function sobelh_Callback(hObject, eventdata, handles)
% hObject    handle to sobelh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
sobh = sobelh(handles.a);
handles.sobh = sobh;
axes(handles.enhanced_image);
imshow(sobh);

% --- Executes on button press in sobelv.
function sobelv_Callback(hObject, eventdata, handles)
% hObject    handle to sobelv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
sobv = sobelv(handles.a);
handles.sobv = sobv;
axes(handles.enhanced_image);
imshow(sobv);
% --- Executes on button press in max.
function max_Callback(hObject, eventdata, handles)
% hObject    handle to max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end

if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
max = maxFilter(handles.a);
handles.max = max;
axes(handles.enhanced_image);
imshow(max);

% --- Executes on button press in median.
function median_Callback(hObject, eventdata, handles)
% hObject    handle to median (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end

midn = medianFilter(handles.a);
handles.midn = midn;
axes(handles.enhanced_image);
imshow(midn);


% --- Executes on button press in midpoint.
function midpoint_Callback(hObject, eventdata, handles)
% hObject    handle to midpoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end

mid = midpointFilter(handles.a);
handles.mid = mid;
axes(handles.enhanced_image);
imshow(mid);


% --- Executes on button press in min.
function min_Callback(hObject, eventdata, handles)
% hObject    handle to min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
min = minFilter(handles.a);
handles.min = min;
axes(handles.enhanced_image);
imshow(min);

% --- Executes on button press in waverage.
function waverage_Callback(hObject, eventdata, handles)
% hObject    handle to waverage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
avw = w_avg(handles.a);
handles.avw = avw;
axes(handles.enhanced_image);
imshow(avw);


% --- Executes on button press in erlang.
function erlang_Callback(hObject, eventdata, handles)
% hObject    handle to erlang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
if ~isempty(get(handles.p1)) && ~isempty(get(handles.p2))
e=get(handles.p1,'string');
b=get(handles.p2,'string');
e=str2num(e);
b=str2num(b);

er = erlang_noise(handles.a,e,b);
handles.er = er;
axes(handles.enhanced_image);
imshow(er);
set(handles.p1,'string',"");
set(handles.p2,'string',"");
set(handles.wprob,'string',"");
set(handles.bprob,'string',"");
end



% --- Executes on button press in exponential.
function exponential_Callback(hObject, eventdata, handles)
% hObject    handle to exponential (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end

if ~isempty(get(handles.p1)) 
e=get(handles.p1,'string');

e=str2num(e);

x = exp_noise(handles.a,e);
handles.x = x;
axes(handles.enhanced_image);
imshow(x);
set(handles.p1,'string',"");
set(handles.p2,'string',"");
set(handles.wprob,'string',"");
set(handles.bprob,'string',"");
end


% --- Executes on button press in gaussian.
function gaussian_Callback(hObject, eventdata, handles)
% hObject    handle to gaussian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
if ~isempty(get(handles.p1)) && ~isempty(get(handles.p2))
m=get(handles.p1,'string');
v=get(handles.p2,'string');
mean=str2num(m);
var=str2num(v);
g = gaussian_noise(handles.a,mean,var);
handles.g = g;
axes(handles.enhanced_image);
imshow(g);
set(handles.p1,'string',"");
set(handles.p2,'string',"");
set(handles.wprob,'string',"");
set(handles.bprob,'string',"");
end



% --- Executes on button press in rayleigh.
function rayleigh_Callback(hObject, eventdata, handles)
% hObject    handle to rayleigh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
if ~isempty(get(handles.p1,'string')) && ~isempty(get(handles.p2,'string'))
e=get(handles.p1,'string');
b=get(handles.p2,'string');
e=str2num(e);
b=str2num(b);
ray = rayleigh_noise(handles.a,e,b);
handles.ray = ray;
axes(handles.enhanced_image);
imshow(ray);
set(handles.p1,'string',"");
set(handles.p2,'string',"");
set(handles.wprob,'string',"");
set(handles.bprob,'string',"");
end



% --- Executes on button press in salt_paper.
function salt_paper_Callback(hObject, eventdata, handles)
% hObject    handle to salt_paper (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end

if ~isempty(get(handles.wprob)) && ~isempty(get(handles.bprob))
w_prob=get(handles.wprob,'string');
b_prob=get(handles.bprob,'string');
wp=str2double(w_prob);
bp=str2double(b_prob);
sp = Salt_Pepper(handles.a,wp,bp);
handles.sp = sp;
axes(handles.enhanced_image);
imshow(sp);
set(handles.wprob,'string',"");
set(handles.bprob,'string',"");
set(handles.p1,'string',"");
set(handles.p2,'string',"");
end


% --- Executes on button press in uniform.
function uniform_Callback(hObject, eventdata, handles)
% hObject    handle to uniform (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
if ~isempty(get(handles.p1)) && ~isempty(get(handles.p2))
e=get(handles.p1,'string');
b=get(handles.p2,'string');
e=str2num(e);
b=str2num(b);
u = uniform_noise(handles.a,e,b);
handles.u = u;
axes(handles.enhanced_image);
imshow(u);
set(handles.p1,'string',"");
set(handles.p2,'string',"");
set(handles.wprob,'string',"");
set(handles.bprob,'string',"");
end


% --- Executes on button press in contrast_stretching.
function contrast_stretching_Callback(hObject, eventdata, handles)
% hObject    handle to contrast_stretching (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
cons = myContrastStretching(handles.a);
handles.cons = cons;
axes(handles.enhanced_image);
imshow(cons);
set(handles.index,'string',"");


% --- Executes on button press in log.
function log_Callback(hObject, eventdata, handles)
% hObject    handle to log (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
if ~isempty(get(handles.index))
index=get(handles.index,'string');
in=str2num(index);
im = logg(handles.a,in);
handles.im = im;
axes(handles.enhanced_image);
imshow(im);
set(handles.index,'string',"");
end



% --- Executes on button press in butter_h.
function butter_h_Callback(hObject, eventdata, handles)
% hObject    handle to butter_h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
if ~isempty(get(handles.d0)) && ~isempty(get(handles.order))
d=get(handles.d0,'string');
d=str2num(d);
o=get(handles.order,'string');
o=str2num(o);
bh = butterworth_highpass(handles.a,d,o);
handles.bh = bh;
axes(handles.enhanced_image);
imshow(bh);
set(handles.d0,'string',"");
set(handles.order,'string',"");
end


% --- Executes on button press in butterl.
function butterl_Callback(hObject, eventdata, handles)
% hObject    handle to butterl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
if ~isempty(get(handles.d0)) && ~isempty(get(handles.order))
d=get(handles.d0,'string');
d=str2num(d);
o=get(handles.order,'string');
o=str2num(o);
bl = butterworth_lowpass(handles.a,d,o);
handles.bl = bl;
axes(handles.enhanced_image);
imshow(bl);
set(handles.d0,'string',"");
set(handles.order,'string',"");
end


% --- Executes on button press in gaussianh.
function gaussianh_Callback(hObject, eventdata, handles)
% hObject    handle to gaussianh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
if ~isempty(get(handles.d0))
d=get(handles.d0,'string');
d=str2num(d);
gh = gaussian_highpass(handles.a,d);
handles.gh = gh;
axes(handles.enhanced_image);
imshow(gh);
set(handles.d0,'string',"");
set(handles.order,'string',"");
end


% --- Executes on button press in gaussianl.
function gaussianl_Callback(hObject, eventdata, handles)
% hObject    handle to gaussianl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
if ~isempty(get(handles.d0))
d=get(handles.d0,'string');
d=str2num(d);
gl = gaussian_lowpass(handles.a,d);
handles.gl = gl;
axes(handles.enhanced_image);
imshow(gl);
set(handles.d0,'string',"");
set(handles.order,'string',"");
end


% --- Executes on button press in idealh.
function idealh_Callback(hObject, eventdata, handles)
% hObject    handle to idealh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
if ~isempty(get(handles.d0))
d=get(handles.d0,'string');
d=str2num(d);
ih = ideal_highpass(handles.a,d);
handles.ih = ih;
axes(handles.enhanced_image);
imshow(ih);
set(handles.d0,'string',"");
set(handles.order,'string',"");
end


% --- Executes on button press in ideall.
function ideall_Callback(hObject, eventdata, handles)
% hObject    handle to ideall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end
if ~isempty(get(handles.d0))
d=get(handles.d0,'string');
d=str2num(d);
il = ideal_lowpass(handles.a,d);
handles.il = il;
axes(handles.enhanced_image);
imshow(il);
set(handles.d0,'string',"");
set(handles.order,'string',"");
end



function index_Callback(hObject, eventdata, handles)
% hObject    handle to index (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of index as text
%        str2double(get(hObject,'String')) returns contents of index as a double


% --- Executes during object creation, after setting all properties.
function index_CreateFcn(hObject, eventdata, handles)
% hObject    handle to index (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d0_Callback(hObject, eventdata, handles)
% hObject    handle to d0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d0 as text
%        str2double(get(hObject,'String')) returns contents of d0 as a double


% --- Executes during object creation, after setting all properties.
function d0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function order_Callback(hObject, eventdata, handles)
% hObject    handle to order (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of order as text
%        str2double(get(hObject,'String')) returns contents of order as a double


% --- Executes during object creation, after setting all properties.
function order_CreateFcn(hObject, eventdata, handles)
% hObject    handle to order (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bprob_Callback(hObject, eventdata, handles)
% hObject    handle to bprob (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bprob as text
%        str2double(get(hObject,'String')) returns contents of bprob as a double



% --- Executes during object creation, after setting all properties.
function bprob_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bprob (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p1_Callback(hObject, eventdata, handles)
% hObject    handle to p1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p1 as text
%        str2double(get(hObject,'String')) returns contents of p1 as a double


% --- Executes during object creation, after setting all properties.
function p1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p2_Callback(hObject, eventdata, handles)
% hObject    handle to p2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p2 as text
%        str2double(get(hObject,'String')) returns contents of p2 as a double


% --- Executes during object creation, after setting all properties.
function p2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wprob_Callback(hObject, eventdata, handles)
% hObject    handle to wprob (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wprob as text
%        str2double(get(hObject,'String')) returns contents of wprob as a double



% --- Executes during object creation, after setting all properties.
function wprob_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wprob (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in fourier.
function fourier_Callback(hObject, eventdata, handles)
% hObject    handle to fourier (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end

ft = fourier_trans(handles.a);
handles.ft = ft;
axes(handles.enhanced_image);
imshow(ft);



% --- Executes on button press in inverse_fourier.
function inverse_fourier_Callback(hObject, eventdata, handles)
% hObject    handle to inverse_fourier (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end

[ft,ff] = fourier_trans(handles.a);
inv=inverse_fourier(ff);
handles.inv = inv;
axes(handles.enhanced_image);
imshow(inv);


% --- Executes on button press in prewitt_h.
function prewitt_h_Callback(hObject, eventdata, handles)
% hObject    handle to prewitt_h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end

ph = prewitth(handles.a);
handles.ph = ph;
axes(handles.enhanced_image);
imshow(ph);


% --- Executes on button press in prewitt_v.
function prewitt_v_Callback(hObject, eventdata, handles)
% hObject    handle to prewitt_v (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(get(handles.enhanced_image, 'Children'))
    cla(handles.enhanced_image, 'reset');
end

pv = prewittv(handles.a);
handles.pv = pv;
axes(handles.enhanced_image);
imshow(pv);
