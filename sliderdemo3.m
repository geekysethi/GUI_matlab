function varargout = sliderdemo3(varargin)
% SLIDERDEMO3 MATLAB code for sliderdemo3.fig
%      SLIDERDEMO3, by itself, creates a new SLIDERDEMO3 or raises the existing
%      singleton*.
%
%      H = SLIDERDEMO3 returns the handle to a new SLIDERDEMO3 or the handle to
%      the existing singleton*.
%
%      SLIDERDEMO3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SLIDERDEMO3.M with the given input arguments.
%
%      SLIDERDEMO3('Property','Value',...) creates a new SLIDERDEMO3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before sliderdemo3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to sliderdemo3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help sliderdemo3

% Last Modified by GUIDE v2.5 02-Jul-2015 17:21:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @sliderdemo3_OpeningFcn, ...
                   'gui_OutputFcn',  @sliderdemo3_OutputFcn, ...
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


% --- Executes just before sliderdemo3 is made visible.
function sliderdemo3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to sliderdemo3 (see VARARGIN)

% Choose default command line output for sliderdemo3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes sliderdemo3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
global v1 v2 c
temp1=get(handles.slider1,'min');
set(handles.slider1,'value',temp1);


temp2=get(handles.slider2,'min');
set(handles.slider2,'value',temp2);


% --- Outputs from this function are returned to the command line.
function varargout = sliderdemo3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in start.
function start_Callback(hObject, eventdata, handles)
% hObject    handle to start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=1;
while(x>0)
for i=1:100
     set(handles.slider1,'value',i)
     set(handles.slider2,'value',i)
     pause(.25)
end

for i=100:-1:1
     set(handles.slider1,'value',i)
     set(handles.slider2,'value',i)
     pause(.25)
end

end